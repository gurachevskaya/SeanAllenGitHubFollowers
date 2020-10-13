//
//  ErrorMessage.swift
//  SHCourse
//
//  Created by Karina on 10/12/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import Foundation

enum KGError: String, Error {
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection."
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data recieved from the server was invalid. Please try again."
}
