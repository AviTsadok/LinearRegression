//
//  ContentView.swift
//  LinearRegression
//
//  Created by Avi Tsadok on 28/12/2024.
//

import Charts
import SwiftUI

struct ContentView: View {

    @State var result: String = ""
    @State var daysOfWeekString: String = ""
    @State var orderPerDayString: String = ""
    @State var model: LinearRegressionModel = LinearRegressionModel()
    @State var predicatedGrade: Double?
    @State var hoursStudied: Float = 7.5
    @State var trained = false

    var body: some View {
        VStack {
            Button("Train") {
                do {
                    try trainAndPrecit()
                } catch let error {
                    result = error.localizedDescription
                }
            }
            if trained {
                Slider(value: $hoursStudied, in: 0...10)
                Text(result)
                    .frame(height:100)

                Chart {
                    ForEach(ExamDataPoint.examDataPoints) {
                        PointMark(
                            x: .value("Hours Studied", $0.hourStudied),
                            y: .value("Grade", $0.grade))
                    }

                    if let b = model.b, let m = model.m {
                        LinePlot(x: "x", y: "y") { x in
                            Double(m * Float(x) + b)
                        }
                        .foregroundStyle(Color.red)
                    }

                    if predicatedGrade != nil {
                        PointMark(
                            x: .value("A", hoursStudied),
                            y: .value("B", predicatedGrade!)
                        )
                        .foregroundStyle(Color.green)
                    }
                }
            }
            Spacer()
        }
        .onChange(
            of: hoursStudied,
            {
                try? predict()
            }
        )
        .padding()
    }

    private func trainAndPrecit() throws {
        let hours: [Float] = ExamDataPoint.examDataPoints.map { $0.hourStudied }
        let grades: [Float] = ExamDataPoint.examDataPoints.map { $0.grade }
        try model.train(x: hours, y: grades)
        trained = true
        try predict()
    }

    private func predict() throws {
        predicatedGrade = Double(try model.predict(x: hoursStudied))
        result = String(
            format: "Predicated grade for %.2f hours of study is %.2f",
            hoursStudied, predicatedGrade ?? 0.0)
    }
}

#Preview {
    ContentView()
}
