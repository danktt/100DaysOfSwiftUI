//
//  ContentView.swift
//  temperature_converter
//
//  Created by Dan on 16/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var temperature = 0.0
    @State private var fromUnit = "Celsius"
    @State private var toUnit = "Fahrenheit"
       
    
    
    let temperatureUnits = ["Celsius" , "Fahrenheit", "Kelvin"]
    let temp = ["Celsius": "°C", "Fahrenheit": "°F", "Kelvin": "K"]
    
    var convertedTemperature: Double {
           return convertTemperature(value: temperature, fromUnit: fromUnit, toUnit: toUnit)
       }
    
    func convertTemperature(value: Double, fromUnit: String, toUnit: String) -> Double {
        if fromUnit == toUnit {
           
            return value
        }
        
        var result = value
        
        switch fromUnit {
        case "Celsius":
            switch toUnit {
            case "Fahrenheit":
                result = value * 1.8 + 32
            case "Kelvin":
                result = value + 273.15
            default:
                break
            }
        case "Fahrenheit":
            switch toUnit {
            case "Celsius":
                result = (value - 32) / 1.8
            case "Kelvin":
                result = (value + 459.67) / 1.8
            default:
                break
            }
        case "Kelvin":
            switch toUnit {
            case "Celsius":
                result = value - 273.15
            case "Fahrenheit":
                result = value * 1.8 - 459.67
            default:
                break
            }
        default:
            break
        }
        
        return result
    }

    
    var body: some View {
        NavigationView {
            Form {
                Section {

                    TextField("Enter temperature", value: $temperature, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                        .padding()
                    
                    Picker("From unit", selection: $fromUnit) {
                        ForEach(temperatureUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    Picker("To unit", selection: $toUnit) {
                        ForEach(temperatureUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    Text("\(temperature, specifier: "%.2f")  \(fromUnit) is \(convertedTemperature, specifier: "%.2f") \(toUnit)")
                        .padding()
                        .font(Font.system(size: 24))
                }
                    
            }.navigationTitle("Convert Temperature")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
