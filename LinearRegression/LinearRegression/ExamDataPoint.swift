import Foundation

struct ExamDataPoint: Identifiable {
    var id: UUID
    
    let hourStudied: Float
    let grade: Float
}


extension ExamDataPoint {
    
    static let examDataPoints: [ExamDataPoint] = [
        ExamDataPoint(id: UUID(), hourStudied: 7.0, grade: 95.1),
        ExamDataPoint(id: UUID(), hourStudied: 7.0, grade: 97.9),
        ExamDataPoint(id: UUID(), hourStudied: 5.3, grade: 78.8),
        ExamDataPoint(id: UUID(), hourStudied: 4.0, grade: 70.6),
        ExamDataPoint(id: UUID(), hourStudied: 8.5, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 3.6, grade: 61.2),
        ExamDataPoint(id: UUID(), hourStudied: 6.2, grade: 89.5),
        ExamDataPoint(id: UUID(), hourStudied: 2.8, grade: 56.7),
        ExamDataPoint(id: UUID(), hourStudied: 9.3, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 1.2, grade: 45.3),
        ExamDataPoint(id: UUID(), hourStudied: 4.7, grade: 74.1),
        ExamDataPoint(id: UUID(), hourStudied: 0.9, grade: 42.8),
        ExamDataPoint(id: UUID(), hourStudied: 6.8, grade: 92.4),
        ExamDataPoint(id: UUID(), hourStudied: 7.4, grade: 97.5),
        ExamDataPoint(id: UUID(), hourStudied: 2.1, grade: 50.2),
        ExamDataPoint(id: UUID(), hourStudied: 3.3, grade: 60.3),
        ExamDataPoint(id: UUID(), hourStudied: 8.0, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 5.9, grade: 84.6),
        ExamDataPoint(id: UUID(), hourStudied: 4.5, grade: 72.8),
        ExamDataPoint(id: UUID(), hourStudied: 2.6, grade: 55.3),
        ExamDataPoint(id: UUID(), hourStudied: 1.9, grade: 49.6),
        ExamDataPoint(id: UUID(), hourStudied: 9.0, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 3.7, grade: 62.4),
        ExamDataPoint(id: UUID(), hourStudied: 6.3, grade: 90.7),
        ExamDataPoint(id: UUID(), hourStudied: 0.5, grade: 40.1),
        ExamDataPoint(id: UUID(), hourStudied: 7.8, grade: 99.2),
        ExamDataPoint(id: UUID(), hourStudied: 5.0, grade: 77.3),
        ExamDataPoint(id: UUID(), hourStudied: 8.3, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 2.4, grade: 54.1),
        ExamDataPoint(id: UUID(), hourStudied: 6.7, grade: 92.0),
        ExamDataPoint(id: UUID(), hourStudied: 3.0, grade: 58.7),
        ExamDataPoint(id: UUID(), hourStudied: 4.2, grade: 68.9),
        ExamDataPoint(id: UUID(), hourStudied: 5.6, grade: 81.4),
        ExamDataPoint(id: UUID(), hourStudied: 7.1, grade: 96.2),
        ExamDataPoint(id: UUID(), hourStudied: 9.5, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 1.5, grade: 47.9),
        ExamDataPoint(id: UUID(), hourStudied: 8.9, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 3.9, grade: 63.8),
        ExamDataPoint(id: UUID(), hourStudied: 2.2, grade: 51.7),
        ExamDataPoint(id: UUID(), hourStudied: 6.0, grade: 87.3),
        ExamDataPoint(id: UUID(), hourStudied: 0.8, grade: 41.5),
        ExamDataPoint(id: UUID(), hourStudied: 4.9, grade: 76.2),
        ExamDataPoint(id: UUID(), hourStudied: 7.7, grade: 98.6),
        ExamDataPoint(id: UUID(), hourStudied: 8.1, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 1.3, grade: 46.2),
        ExamDataPoint(id: UUID(), hourStudied: 2.9, grade: 57.6),
        ExamDataPoint(id: UUID(), hourStudied: 9.7, grade: 100.0),
        ExamDataPoint(id: UUID(), hourStudied: 3.4, grade: 60.9),
        ExamDataPoint(id: UUID(), hourStudied: 5.8, grade: 83.7),
        ExamDataPoint(id: UUID(), hourStudied: 4.3, grade: 69.8)
    ]
    
}
