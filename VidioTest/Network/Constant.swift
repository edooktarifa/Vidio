//
//  Constant.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation

public struct Constant {
    static let baseUrl = "https://mocki.io/v1"
}

public enum ApiError: Error {
    case forbidden              //Status code 403
    case notFound               //Status code 404
    case conflict(error: Any)   //Status code 409
    case internalServerError    //Status code 500
}

public enum ErrorMessage: String{
    case forbidden = "Forbidden Error"
    case notFound = "Not Found"
    case conflict = "Conflict Error"
    case internalServerError = "Internal Server Error"
    case unknownError = "No Internet Connection"
}
