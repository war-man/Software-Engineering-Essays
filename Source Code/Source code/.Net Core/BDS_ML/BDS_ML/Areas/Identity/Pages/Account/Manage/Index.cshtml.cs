﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text.Encodings.Web;
using System.Threading.Tasks;
using BDS_ML.Models;
using BDS_ML.Models.Mail;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using BDS_ML.Models.ModelDB;
using Microsoft.AspNetCore.Authorization;

namespace BDS_ML.Areas.Identity.Pages.Account.Manage
{
    [AllowAnonymous]
    public partial class IndexModel : PageModel
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly IEmailSender _emailSender;
        private readonly BDT_MLDBContext _context;

        public IndexModel(
            UserManager<ApplicationUser> userManager,
            SignInManager<ApplicationUser> signInManager,
            IEmailSender emailSender)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _emailSender = emailSender;
            _context = new BDT_MLDBContext();
        }

        public string Username { get; set; }

        public bool IsEmailConfirmed { get; set; }
        public bool IsVip { get; set; }
        public DateTime expiryDate { get; set; }
        public DateTime activeDay { get; set; }


        [TempData]
        public string StatusMessage { get; set; }

        [BindProperty]
        public InputModel Input { get; set; }

        public class InputModel
        {
            [Required]
            [EmailAddress]
            public string Email { get; set; }

            [Required(ErrorMessage = "Số điên thoại phải được điền.")]
            [DataType(DataType.PhoneNumber, ErrorMessage = "Số điện thoại không hợp lệ.")]
            [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Số điện thoại không hợp lệ.")]
            [StringLength(10, ErrorMessage = "Điện thoại chỉ chứa {2} kí tự số.", MinimumLength = 10)]
            [Display(Name = "Số điện thoại")]
            public string PhoneNumber { get; set; }

            [Required(ErrorMessage = "Họ phải được điền.")]
            [StringLength(50, ErrorMessage = "Họ phải dài hơn {2} kí tự và ít hơn {1} kí tự.", MinimumLength = 2)]
            [Display(Name = "Họ")]
            public string FirstName { get; set; }

            [Required(ErrorMessage = "Tên phải được điền.")]
            [StringLength(50, ErrorMessage = "Tên phải dài hơn {2} kí tự và ít hơn {1} kí tự.", MinimumLength = 2)]
            [Display(Name = "Tên")]
            public string LastName { get; set; }

            [Required(ErrorMessage = "Địa chỉ phải được điền.")]
            [StringLength(100, ErrorMessage = "Địa chỉ chưa hợp lệ.", MinimumLength = 6)]
            [Display(Name = "Địa chỉ")]
            public string Address { get; set; }

        }

        public async Task<IActionResult> OnGetAsync()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound($"Unable to load user with ID '{_userManager.GetUserId(User)}'.");
            }

            var userName = await _userManager.GetUserNameAsync(user);
            var email = await _userManager.GetEmailAsync(user);
            var phoneNumber = await _userManager.GetPhoneNumberAsync(user);
            var id = await _userManager.GetUserIdAsync(user);

            Username = userName;

            Customer customer = _context.Customer.Where(c=>c.Account_ID==id).SingleOrDefault();


            Input = new InputModel
            {
                Email = email,
                PhoneNumber = phoneNumber,
                LastName = customer.LastName,
                FirstName = customer.FirstName,
                Address = customer.Address
            };
         
            IsEmailConfirmed = await _userManager.IsEmailConfirmedAsync(user);
            var vip = _context.Vip_Status.Where(p => p.ID_User == user.Id && p.ExpiryDate <= DateTime.Now).LastOrDefault();
            if(vip!=null)
            {
                IsVip = true;
                expiryDate = vip.ExpiryDate.GetValueOrDefault();
                activeDay = vip.ActiveDay.GetValueOrDefault();
            }
            else
            {
                IsVip = false;
            }
            
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound($"Unable to load user with ID '{_userManager.GetUserId(User)}'.");
            }
            Customer customer = _context.Customer.Where(c => c.Account_ID == user.Id).SingleOrDefault();
            var email = await _userManager.GetEmailAsync(user);
            if (Input.Email != email)
            {
                customer.Email = Input.Email;
                var setEmailResult = await _userManager.SetEmailAsync(user, Input.Email);
                if (!setEmailResult.Succeeded)
                {
                    var userId = await _userManager.GetUserIdAsync(user);
                    throw new InvalidOperationException($"Unexpected error occurred setting email for user with ID '{userId}'.");
                }
            }

            var phoneNumber = await _userManager.GetPhoneNumberAsync(user);
            if (Input.PhoneNumber != phoneNumber)
            {
                customer.PhoneNumber = Input.PhoneNumber;
                var setPhoneResult = await _userManager.SetPhoneNumberAsync(user, Input.PhoneNumber);
                if (!setPhoneResult.Succeeded)
                {
                    var userId = await _userManager.GetUserIdAsync(user);
                    throw new InvalidOperationException($"Unexpected error occurred setting phone number for user with ID '{userId}'.");
                }
            }
            if (Input.FirstName != customer.FirstName)
            {
                customer.FirstName = Input.FirstName;
            }
            if (Input.LastName != customer.LastName)
            {
                customer.LastName = Input.LastName;
            }
           
            if (Input.Address != customer.Address)
            {
                customer.Address = Input.Address;

            }
            customer.ModifiedDate = DateTime.Now;
            var updateResult = await _userManager.UpdateAsync(user);
            if (!updateResult.Succeeded)
            {
                
                var userId = await _userManager.GetUserIdAsync(user);
                throw new InvalidOperationException($"Unexpected error occurred setting fields for user with ID '{userId}'.");
            }
            else
            {
                try
                {
                    _context.Customer.Attach(customer);
                    _context.Entry(customer).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    _context.SaveChanges();
                }
                catch
                {
                    StatusMessage = "Error Cập nhật thông tin không thành công!";
                    return RedirectToPage();
                }
            }
            await _signInManager.RefreshSignInAsync(user);
            StatusMessage = "Thông tin của bạn đã được cập nhật";
            return RedirectToPage();
        }

        public async Task<IActionResult> OnPostSendVerificationEmailAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound($"Unable to load user with ID '{_userManager.GetUserId(User)}'.");
            }

           
            var userId = await _userManager.GetUserIdAsync(user);
            var email = await _userManager.GetEmailAsync(user);
            var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
            if (Input.Email != email)
            {

                var setEmailResult = await _userManager.SetEmailAsync(user, Input.Email);
                if (!setEmailResult.Succeeded)
                {

                    throw new InvalidOperationException($"Unexpected error occurred setting email for user with ID '{userId}'.");
                }
            }
            var updateResult = await _userManager.UpdateAsync(user);
            if (!updateResult.Succeeded)
            {


                throw new InvalidOperationException($"Unexpected error occurred setting fields for user with ID '{userId}'.");
            }

            await _signInManager.RefreshSignInAsync(user);
            var callbackUrl = Url.Page(
                "/Account/ConfirmEmail",
                pageHandler: null,
                values: new { userId = userId, code = code },
                protocol: Request.Scheme);
            //await _emailSender.SendEmailAsync(
            //    email,
            //    "Confirm your email",
            //    $"Please confirm your account by <a href='{HtmlEncoder.Default.Encode(callbackUrl)}'>clicking here</a>.");
            SendMail.sendMail($"Vui lòng xác nhận tài khoản của bạn bằng cách <a href='{HtmlEncoder.Default.Encode(callbackUrl)}'>click vào đây</a>.", email,
                     "Xác nhận email của bạn");
            StatusMessage = "Gửi email xác minh đã được gửi. Kiểm tra email của bạn.";
            return RedirectToPage();
        }
    }
}
