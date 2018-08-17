//
//  ProjectError.swift
//
//  Created by Developer on 25.04.2018.
//

import Foundation

protocol ProjectErrorProtocol: LocalizedError, Equatable {
    var title: String { get }
    var code: Int { get }
}

struct ProjectError: ProjectErrorProtocol {
    
    var title: String
    var code: Int
    var errorDescription: String? { return description }
    var failureReason: String? { return description }
    
    private var description: String
    
    init(title: String = "Error", description: String, code: Int) {
        self.title = title
        self.description = description
        self.code = code
    }
}

//MARK: - Error list
extension ProjectError {
    static var locationEnablingError: ProjectError { return ProjectError(title: "GPS is denied", description: "Please enable the location detecting", code: 1) }
    static var emptyCommentError: ProjectError { return ProjectError(description: "Сomment is empty", code: 2) }
    static var emptyHashError: ProjectError { return ProjectError(description: "Hash is empty", code: 3) }
    static var emptyWaybillIDError: ProjectError { return ProjectError(description: "Сomment is empty", code: 4) }
}
