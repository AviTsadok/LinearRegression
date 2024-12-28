//
//  ContentView.swift
//  LinearRegression
//
//  Created by Avi Tsadok on 28/12/2024.
//

import SwiftUI
import Charts



struct ContentView: View {
    
    @State var result: String = ""
    @State var daysOfWeekString: String = ""
    @State var orderPerDayString: String = ""
    @State var model: LinearRegressionModel = LinearRegressionModel()
    @State var predicatedGrade: Double?
    
    var body: some View {
        VStack {
            Button("Train and predict") {
                do {
                    try trainAndPrecit()
                } catch let error {
                    result = error.localizedDescription
                }
            }
            Text(result)
            Text(daysOfWeekString)
            Text(orderPerDayString)
            Chart {
                ForEach(ExamDataPoint.examDataPoints) {
                    PointMark(x: .value("Hours Studied", $0.hourStudied), y: .value("Grade", $0.grade))
                }
                                
                if model.b != nil {
                    LinePlot(x: "x", y: "y") { x in
                        Double(model.m! * Float(x) + model.b!)
                    }
                    .foregroundStyle(Color.red)
                }
                
                if predicatedGrade != nil {
                    PointMark(x: .value("A", 4.53),
                              y: .value("B", predicatedGrade!))
                    .foregroundStyle(Color.green)
                }
                
               
                
            }
        
        }
        .padding()
    }
    
    private func trainAndPrecit() throws {

        
        // Generate data for 30 days
        let hours: [Float] = ExamDataPoint.examDataPoints.map{$0.hourStudied}
        let grades: [Float] = ExamDataPoint.examDataPoints.map {$0.grade}
        

        try model.train(x: hours, y: grades)
        predicatedGrade = Double(try model.predict(x: 4.53))
        result = "Predicated grade for 7.5 hours of study is \(predicatedGrade)"
    }
}

#Preview {
    ContentView()
}
