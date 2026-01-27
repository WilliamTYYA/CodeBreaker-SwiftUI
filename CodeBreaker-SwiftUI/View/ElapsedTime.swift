//
//  ElapsedTime.swift
//  CodeBreaker-SwiftUI
//
//  Created by Thiha Ye Yint Aung on 1/26/26.
//


import SwiftUI

//struct ElapsedTime: View {
//    let startTime: Date
//    let endTime: Date?
//    
//    var body: some View {
//        if let endTime {
//            Text(endTime, format: .offset(to: startTime, allowedFields: [.minute, .second]))
//        } else {
//            Text(TimeDataSource<Date>.currentDate, format: .offset(to: startTime, allowedFields: [.minute, .second]))
//        }
//    }
//}

import SwiftUI

struct ElapsedTime: View {
    let startTime: Date
    let endTime: Date?
    
    var body: some View {
        if let endTime {
            Text(endTime, format: .offset(to: startTime, allowedFields: [.minute, .second]))
        } else {
            Text(TimeDataSource<Date>.currentDate, format: .offset(to: startTime, allowedFields: [.minute, .second]))
        }
    }
}

#Preview {
    ElapsedTime(startTime: Date.now, endTime: nil)
}
