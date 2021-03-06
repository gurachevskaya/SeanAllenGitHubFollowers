//
//  KGError.swift
//  SHCourse
//
//  Created by Karina on 10/14/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import Foundation

enum KGError: String, Error {
    case invalidUsername        = "This username created an invalid request. Please try again."
    case unableToComplete       = "Unable to complete your request. Please check your internet connection"
    case invalidResponse        = "Invalid response from the server. Please try again."
    case invalidData            = "The data recieved from the server was invalid. Please try again."
    case unableToFavourite      = "There was an error favouriting this user. Please try again."
    case alreadyInFavourites    = "You've already favourited this user. You must REALLY like it!"
}
