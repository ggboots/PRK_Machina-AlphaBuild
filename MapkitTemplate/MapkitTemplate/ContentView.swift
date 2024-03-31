//
//  ContentView.swift
//  MapkitTemplate
//
//  Created by ARES on 28/1/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    var body: some View {
        VStack(){
            Map(position: $position){
                
            }
            .frame(height:300)
            .mapControls {
                MapUserLocationButton()
                //            MapPitchToggle() --> 3D/2D View
            }
            .onAppear{
                CLLocationManager().requestWhenInUseAuthorization()
            }
            PKMachinaImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        }
        VStack(alignment: .leading){
            Text("PRK Machina")
                .font(.title)
                .bold()
            HStack {
                Text("Email")
                    .font(.subheadline)
                Spacer()
                Text("Create Account")
                    .font(.subheadline)
            }
            HStack {
                Text("Password")
                    .font(.subheadline)
                Spacer()
                Text("Reset Password")
                    .font(.subheadline)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Continue")
            })
        }
        .padding()
        Spacer()
    }
        
}

#Preview {
    ContentView()
}
