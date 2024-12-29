import Foundation

struct ExamDataPoint: Identifiable {
    var id: UUID
    
    let hourStudied: Float
    let grade: Float
}


extension ExamDataPoint {
    
    static let examDataPoints: [ExamDataPoint] = [
        ExamDataPoint(id: UUID(), hourStudied: 7.2, grade: 92.3),
        ExamDataPoint(id: UUID(), hourStudied: 6.9, grade: 97.5),
        ExamDataPoint(id: UUID(), hourStudied: 5.5, grade: 76.2),
        ExamDataPoint(id: UUID(), hourStudied: 3.8, grade: 72.1),
        ExamDataPoint(id: UUID(), hourStudied: 8.6, grade: 98.4),
        ExamDataPoint(id: UUID(), hourStudied: 3.5, grade: 59.8),
        ExamDataPoint(id: UUID(), hourStudied: 6.1, grade: 85.4),
        ExamDataPoint(id: UUID(), hourStudied: 2.7, grade: 54.9),
        ExamDataPoint(id: UUID(), hourStudied: 9.4, grade: 99.1),
        ExamDataPoint(id: UUID(), hourStudied: 1.4, grade: 48.7),
        ExamDataPoint(id: UUID(), hourStudied: 4.8, grade: 71.3),
        ExamDataPoint(id: UUID(), hourStudied: 1.0, grade: 45.1),
        ExamDataPoint(id: UUID(), hourStudied: 6.7, grade: 88.3),
        ExamDataPoint(id: UUID(), hourStudied: 7.3, grade: 95.7),
        ExamDataPoint(id: UUID(), hourStudied: 2.2, grade: 53.4),
        ExamDataPoint(id: UUID(), hourStudied: 3.4, grade: 62.8),
        ExamDataPoint(id: UUID(), hourStudied: 8.2, grade: 97.2),
        ExamDataPoint(id: UUID(), hourStudied: 6.0, grade: 80.9),
        ExamDataPoint(id: UUID(), hourStudied: 4.3, grade: 70.2),
        ExamDataPoint(id: UUID(), hourStudied: 2.5, grade: 50.8),
        ExamDataPoint(id: UUID(), hourStudied: 1.7, grade: 47.6),
        ExamDataPoint(id: UUID(), hourStudied: 9.1, grade: 99.6),
        ExamDataPoint(id: UUID(), hourStudied: 3.9, grade: 60.5),
        ExamDataPoint(id: UUID(), hourStudied: 6.2, grade: 85.1),
        ExamDataPoint(id: UUID(), hourStudied: 0.6, grade: 38.3),
        ExamDataPoint(id: UUID(), hourStudied: 7.9, grade: 96.4),
        ExamDataPoint(id: UUID(), hourStudied: 5.1, grade: 72.5),
        ExamDataPoint(id: UUID(), hourStudied: 8.4, grade: 95.9),
        ExamDataPoint(id: UUID(), hourStudied: 2.3, grade: 50.2),
        ExamDataPoint(id: UUID(), hourStudied: 6.8, grade: 89.4),
        ExamDataPoint(id: UUID(), hourStudied: 3.1, grade: 55.6),
        ExamDataPoint(id: UUID(), hourStudied: 4.1, grade: 67.4),
        ExamDataPoint(id: UUID(), hourStudied: 5.7, grade: 77.8),
        ExamDataPoint(id: UUID(), hourStudied: 7.0, grade: 94.5),
        ExamDataPoint(id: UUID(), hourStudied: 9.6, grade: 98.8),
        ExamDataPoint(id: UUID(), hourStudied: 1.3, grade: 42.7),
        ExamDataPoint(id: UUID(), hourStudied: 8.7, grade: 98.6),
        ExamDataPoint(id: UUID(), hourStudied: 3.8, grade: 64.1),
        ExamDataPoint(id: UUID(), hourStudied: 2.1, grade: 49.3),
        ExamDataPoint(id: UUID(), hourStudied: 5.9, grade: 81.7),
        ExamDataPoint(id: UUID(), hourStudied: 0.7, grade: 39.8),
        ExamDataPoint(id: UUID(), hourStudied: 4.6, grade: 73.9),
        ExamDataPoint(id: UUID(), hourStudied: 7.8, grade: 95.3),
        ExamDataPoint(id: UUID(), hourStudied: 8.0, grade: 97.5),
        ExamDataPoint(id: UUID(), hourStudied: 1.5, grade: 44.6),
        ExamDataPoint(id: UUID(), hourStudied: 2.9, grade: 56.4),
        ExamDataPoint(id: UUID(), hourStudied: 9.8, grade: 98.2),
        ExamDataPoint(id: UUID(), hourStudied: 3.6, grade: 61.7),
        ExamDataPoint(id: UUID(), hourStudied: 5.6, grade: 78.9),
        ExamDataPoint(id: UUID(), hourStudied: 4.4, grade: 68.2)
    ]

    
}
