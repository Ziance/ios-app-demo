//
//  CarModels.swift
//  Demo App UI
//
//  Created by ZT-9 on 03/12/24.
//

import UIKit
import SwiftUI
import Foundation

struct Car: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var modelName: String
    var makeYear: String
    var transmissionType: String
    var fuelType: String
    var bodyType: String
    var tuition: String
    var kilometers: String
    var din: String
    var expiryDate: String
}
