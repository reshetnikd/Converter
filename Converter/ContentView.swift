//
//  ContentView.swift
//  Converter
//
//  Created by Dmitry Reshetnik on 16.01.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputNumber = ""
    @State private var inputUnit = ""
    @State private var outputUnit = ""
    
    var conversion: String {
        return ""
    }
    
    let units = [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Units to convert from")) {
                    Picker("Units", selection: $inputUnit) {
                        ForEach(0..<units.count) {
                            Text("\(self.units[$0].symbol)")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    TextField("Units", text: $inputNumber)
                }

                Section(header: Text("Units to convert to")) {
                    Picker("Units", selection: $outputUnit) {
                        ForEach(0..<units.count) {
                            Text("\(self.units[$0].symbol)")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Text(conversion)
                }
            }.navigationBarTitle("Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
