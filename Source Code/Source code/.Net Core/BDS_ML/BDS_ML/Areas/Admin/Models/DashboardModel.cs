﻿using BDS_ML.Models.ModelDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BDS_ML.Areas.Admin.Models
{
    public class Dashboard
    {
        public Dashboard()
        {

        }
        private int postNumber;
        private int customerNumber;
        private int postSoldNumber;
        private int postPendingApprovalNumber;
        private int postedNumber;
        private int reportpostNumber;
        public int PostNumber { get => postNumber; set => postNumber = value; }
        public int CustomerNumber { get => customerNumber; set => customerNumber = value; }
        public int PostSoldNumber { get => postSoldNumber; set => postSoldNumber = value; }
        public int PostPendingApprovalNumber { get => postPendingApprovalNumber; set => postPendingApprovalNumber = value; }
        public int PostedNumber { get => postedNumber; set => postedNumber = value; }
        public int ReportpostNumber { get => reportpostNumber; set => reportpostNumber = value; }
    }
}
