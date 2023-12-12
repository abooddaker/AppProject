//
//  ContentView.swift
//  CarScanner
//
//  Created by Abood Daker on 2023-12-12.
//

import SwiftUI

struct ContentView: View {
    @State private var licensePlate: String = ""
    @State private var carDetails: CarDetails?

    var body: some View {
        VStack {
            Text("Car Scanner App")
                .font(.largeTitle)
                .padding()

            TextField("Enter License Plate", text: $licensePlate)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                // Placeholder logic for search
                // You can replace this with actual search logic later
                if licensePlate.isEmpty {
                    carDetails = nil
                } else {
                    // Simulate finding car details
                    // Replace with actual data fetching logic
                    carDetails = CarDetails(name: "Toyota Camry", yearModel: "2020", color: "Red", plate: "LSF 415")
                }
            }) {
                Text("Submit")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            if let details = carDetails {
                Text("Car Details")
                    .font(.headline)
                Text("Name: \(details.name)")
                Text("Year Model: \(details.yearModel)")
                Text("Color: \(details.color)")
                Text("Liscense Plate: \(details.plate)")
                // Add more detail fields as needed
            }

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CarDetails {
    var name: String
    var yearModel: String
    var color: String
    var plate: String
    // Add more fields as needed
}
