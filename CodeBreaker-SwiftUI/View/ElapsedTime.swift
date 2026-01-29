//
//  ElapsedTime.swift
//  CodeBreaker-SwiftUI
//
//  Created by Thiha Ye Yint Aung on 1/26/26.
//


import SwiftUI

//struct ElapsedTime: View {
//    // MARK: Data In
//    let startTime: Date?
//    let endTime: Date?
//    let elapsedTime: TimeInterval
//    
//    var format: SystemFormatStyle.DateOffset {
//        .offset(to: startTime! - elapsedTime, allowedFields: [.minute, .second])
//    }
//    
//    var body: some View {
//        if startTime != nil {
//            if let endTime {
//                Text(endTime, format: format)
//            } else {
//                Text(TimeDataSource<Date>.currentDate, format: format)
//            }
//        } else {
//            Image(systemName: "pause")
//        }
//    }
//}

import SwiftUI

struct ElapsedTime: View {
    let startTime: Date?
    let endTime: Date?
    let elapsedTime: TimeInterval
    
    var format: SystemFormatStyle.DateOffset {
        .offset(to: startTime! - elapsedTime, allowedFields: [.minute, .second])
    }
    
    var body: some View {
        if startTime != nil {
            if let endTime {
                Text(endTime, format: format)
            } else {
                Text(TimeDataSource<Date>.currentDate, format: format)
            }
        } else {
            Image(systemName: "pause")
        }
    }
}

#Preview {
    ElapsedTime(startTime: Date.now, endTime: nil, elapsedTime: 10)
}
