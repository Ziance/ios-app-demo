//
//  CarsViewModel.swift
//  Demo App UI
//
//  Created by ZT-9 on 03/12/24.
//

import CoreData
import SwiftUI

class CarsViewModel: ObservableObject {
    
    private var context = PersistenceController.shared.container.viewContext
    
    @Published var carDatasource: [Car] = []
    @Published var selectedCar: Car = Car(name: "Name", image: "Image", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025")

    init() {
        loadItems()
        if carDatasource.count == 0 {
            addItem(name: "Car 1", image: "img_car", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025")
            addItem(name: "Car 2", image: "img_car", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025")
            addItem(name: "Car 3", image: "img_car", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025")
            addItem(name: "Car 4", image: "img_car", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025")
            addItem(name: "Car 5", image: "img_car", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025")
            loadItems()
        }
    }

    @objc func loadItems() {
        // Simulate loading data
        let request = NSFetchRequest<CarsData>(entityName: "CarsData")
        do {
            let data = try context.fetch(request)
            for item in data {
                let car = Car(name: item.name ?? "---", image: item.image ?? "---", modelName: item.modelName ?? "---", makeYear: item.makeYear ?? "---", transmissionType: item.transmissionType ?? "---", fuelType: item.fuelType ?? "---", bodyType: item.bodyType ?? "---", tuition: item.tuition ?? "---", kilometers: item.kilometers ?? "---", din: item.din ?? "---", expiryDate: item.expiryDate ?? "---")
                carDatasource.append(car)
            }
        } catch {
            print("Error fetching items: \(error)")
        }
    }
    
    // Add a new item to Core Data
    func addItem(name: String, image: String, modelName: String, makeYear: String, transmissionType: String, fuelType: String, bodyType: String, tuition: String, kilometers: String, din: String, expiryDate: String) {
        let newItem = CarsData(context: context)
        newItem.name = name
        newItem.image = image
        newItem.modelName = modelName
        newItem.makeYear = makeYear
        newItem.transmissionType = transmissionType
        newItem.fuelType = fuelType
        newItem.bodyType = bodyType
        newItem.tuition = tuition
        newItem.kilometers = kilometers
        newItem.din = din
        newItem.expiryDate = expiryDate
        do {
            try PersistenceController.shared.container.viewContext.save()
        } catch {
            print("Error saving items: \(error)")
        }
    }
}
