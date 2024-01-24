//
//  TrainingDetailView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 21/1/2024.
//

import SwiftUI

struct TrainingDetailView: View {
    let training: TrainingData

    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Spacer()
                        VStack(spacing: 0) {
                            Image("rowing")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                            Text("Training \(training.index+1)")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    
                }
                
                Section("Wind") {
                    HStack {
                        Image("wind")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                        Spacer()
                        VStack(alignment: .trailing, spacing: 8) {
                            Text("vwind: \(training.vwind)")
                            Text("Wind Direction: \(training.winddirection)")
                        }
                    }
                }
                .font(.subheadline)
                
                Section("Location") {
                    HStack {
                        
                        Image("location")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                        Spacer()
                        VStack(alignment: .trailing, spacing: 8) {
                            Text("Latitude: \(training.latitude)")
                            Text("Longitude: \(training.longitude)")
                        }
                    }
                    NavigationLink(destination: LocationView(lat: training.latitude, lon: training.longitude)) {
                        Text("View In Map")
                            .foregroundColor(.blue) // Optional: Set text color
                    }
                }
                .font(.subheadline)
                                
                
                
                
                
            }
        }
        
        }
    }


#Preview {
    TrainingDetailView(training: TrainingData(index: 0,
                                                     vwind: 2,
                                                     winddirection: 280,
                                                     latitude: 49.238819,
                                                     longitude: 16.513666,
                                                     averageDriveForce: 0,
                                                     cadence: 0,
                                                     driveLength: 0,
                                                     hrcur: 74,
                                                     stroke500mPace: 611.524142219,
                                                     strokeDistance: 2.46338671706))
}
