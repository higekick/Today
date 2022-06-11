//
//  TodayError.swift
//  Today
//
//  Created by hige on 2022/05/20.
//

import Foundation

enum TodayError: LocalizedError {
    case accessDenied
    case accessRestricted
    case failedReadingCalendarItem
    case failedReadingReminder
    case reminderHasNoDueDate
    case unknown
    
    var errorDescription: String? {
        switch self {
        case.accessDenied:
            return NSLocalizedString("The app dosen't have permission to read reminders", comment: "access denied error description")
        case.accessRestricted:
            return NSLocalizedString("This device dosen't allow access to reminders.", comment: "access restricted error description")
        case.failedReadingCalendarItem:
            return NSLocalizedString("Failed to read a calendar item.", comment: "failed reading calendar item error description")
        case .failedReadingReminder:
            return NSLocalizedString("failed to read reminders.", comment: "failed reading reminders error description")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A reminder has no due date.", comment: "reminder has no due date error description")
        case.unknown:
            return NSLocalizedString("An unknown error occured", comment: "unknown error description")
        }
    }
}
