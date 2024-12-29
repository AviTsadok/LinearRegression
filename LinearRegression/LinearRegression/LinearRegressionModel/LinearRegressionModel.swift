import Foundation
import Observation

enum TrainingError: Error {
    case invalidInput
    case divisionByZero
    case mAndBNotInitialized
}

@Observable
@MainActor class LinearRegressionModel {
    
    var b: Float?
    var m: Float?
    
    func train(x: [Float], y: [Float]) throws {
        guard x.count == y.count && x.count > 1 else { throw TrainingError.invalidInput }
        
        let n = Float(x.count)
        let sumX = x.reduce(0, +)
        let sumY = y.reduce(0, +)
        let sumXY = zip(x, y).map(*).reduce(0, +)
        let sumXSquare = x.map { $0 * $0 }.reduce(0, +)
        
        let numeratorM = n * sumXY - sumX * sumY
        let denominatorM = n * sumXSquare - (sumX * sumX)
        
        guard denominatorM != 0 else { throw TrainingError.divisionByZero }
        
        m = numeratorM / denominatorM
        b = (sumY - m! * sumX) / n
    }
    
    func predict(x: Float) throws -> Float {
        guard let m, let b else { throw TrainingError.mAndBNotInitialized }
        return m * x + b
    }
}
