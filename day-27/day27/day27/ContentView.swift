//
//  ContentView.swift
//  day27
//
//  Created by Dan on 23/03/23.
//
import CoreML
import SwiftUI

struct ContentView: View {
    let cups = [1,2,3,4,5,6,7,8,9,10]
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    
    static var defaultWakeTime : Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("When you want wake up?")
                        .font(.headline)
                    
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                
                Section{
                    Text("Desired amount of sleep")
                        .font(.headline)
                    
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                    
                }
                
                Section{
                    Text("Daily coffee intake")
                        .font(.headline)
                    
                    
                    
                    Picker(coffeeAmount == 1 ? "1 cup": "\(coffeeAmount) cups", selection: $coffeeAmount ){
                        ForEach(cups, id: \.self){
                            Text("\($0)")
                        }
                    }.pickerStyle(.segmented)
                }
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculation", action: calculateBedtime)
                
            }
            .alert(alertTitle, isPresented: $showingAlert){
                Button("Ok"){}
            }message: {
                Text(alertMessage).font(Font.system(size: 30))
            }
        }
        
    }
    
    func calculateBedtime(){
   
        do{
            
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour,.minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            alertTitle = "Your ideal bedtime is.."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
            
        } catch{
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }
        showingAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
