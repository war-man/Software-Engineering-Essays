// This file was auto-generated by ML.NET Model Builder. 

using System;
using System.IO;
using System.Linq;
using Microsoft.ML;
using BDS_MLML.Model;

namespace BDS_MLML.ConsoleApp
{
    class Program
    {
        //Dataset to use for predictions 
        private const string DATA_FILEPATH = @"C:\Users\Admin\Documents\GitHub\Software-Engineering-Essays\Source Code\Source code\ML\home_data_edited.csv";

        static void Main(string[] args)
        {
            // Create single instance of sample data from first line of dataset for model input
            ModelInput sampleData = CreateSingleDataSample(DATA_FILEPATH);

            // Make a single prediction on the sample data and print results
            ModelOutput predictionResult = ConsumeModel.Predict(sampleData);

            Console.WriteLine("Using model to make single prediction -- Comparing actual Askprice with predicted Askprice from sample data...\n\n");
            Console.WriteLine($"num_bed: {sampleData.Num_bed}");
            Console.WriteLine($"year_built: {sampleData.Year_built}");
            Console.WriteLine($"longitude: {sampleData.Longitude}");
            Console.WriteLine($"latitude: {sampleData.Latitude}");
            Console.WriteLine($"num_room: {sampleData.Num_room}");
            Console.WriteLine($"num_bath: {sampleData.Num_bath}");
            Console.WriteLine($"living_area: {sampleData.Living_area}");
            Console.WriteLine($"property_type: {sampleData.Property_type}");
            Console.WriteLine($"num_parking: {sampleData.Num_parking}");
            Console.WriteLine($"accessible_buildings: {sampleData.Accessible_buildings}");
            Console.WriteLine($"family_quality: {sampleData.Family_quality}");
            Console.WriteLine($"art_expos: {sampleData.Art_expos}");
            Console.WriteLine($"emergency_shelters: {sampleData.Emergency_shelters}");
            Console.WriteLine($"emergency_water: {sampleData.Emergency_water}");
            Console.WriteLine($"Facilities: {sampleData.Facilities}");
            Console.WriteLine($"fire_stations: {sampleData.Fire_stations}");
            Console.WriteLine($"Cultural: {sampleData.Cultural}");
            Console.WriteLine($"Monuments: {sampleData.Monuments}");
            Console.WriteLine($"police_stations: {sampleData.Police_stations}");
            Console.WriteLine($"Vacant: {sampleData.Vacant}");
            Console.WriteLine($"Free_Parking: {sampleData.Free_Parking}");
            Console.WriteLine($"\n\nActual Askprice: {sampleData.Askprice} \nPredicted Askprice: {predictionResult.Score}\n\n");
            Console.WriteLine("=============== End of process, hit any key to finish ===============");
            Console.ReadKey();
        }

        // Change this code to create your own sample data
        #region CreateSingleDataSample
        // Method to load single row of dataset to try a single prediction
        private static ModelInput CreateSingleDataSample(string dataFilePath)
        {
            // Create MLContext
            MLContext mlContext = new MLContext();

            // Load dataset
            IDataView dataView = mlContext.Data.LoadFromTextFile<ModelInput>(
                                            path: dataFilePath,
                                            hasHeader: true,
                                            separatorChar: ',',
                                            allowQuoting: true,
                                            allowSparse: false);

            // Use first line of dataset as model input
            // You can replace this with new test data (hardcoded or from end-user application)
            ModelInput sampleForPrediction = mlContext.Data.CreateEnumerable<ModelInput>(dataView, false)
                                                                        .First();
            return sampleForPrediction;
        }
        #endregion
    }
}
