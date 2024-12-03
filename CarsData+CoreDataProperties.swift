//
//  CarsData+CoreDataProperties.swift
//  DemoAppSwiftUI
//
//  Created by ZT-9 on 03/12/24.
//
//

import Foundation
import CoreData


extension CarsData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CarsData> {
        return NSFetchRequest<CarsData>(entityName: "CarsData")
    }

    @NSManaged public var bodyType: String?
    @NSManaged public var din: String?
    @NSManaged public var expiryDate: String?
    @NSManaged public var fuelType: String?
    @NSManaged public var image: String?
    @NSManaged public var kilometers: String?
    @NSManaged public var makeYear: String?
    @NSManaged public var modelName: String?
    @NSManaged public var name: String?
    @NSManaged public var transmissionType: String?
    @NSManaged public var tuition: String?

}

extension CarsData : Identifiable {

}
