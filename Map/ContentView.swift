//
//  ContentView.swift
//  Map
//
//  Created by ashwaq almunmms on 31/01/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    var body: some View {
        VStack {
            Map {
                MapCircle(center: .init(latitude: 24.7136, longitude: 46.6753), radius: 100)
                    .foregroundStyle(.blue.opacity(0.5))
                    .annotationTitles(.visible)
                    .mapOverlayLevel(level: .aboveRoads)
                ///change coordinate to current user location
                Annotation("ashwaq", coordinate: .init(latitude: 24.7136, longitude: 46.6753)) {
                    Circle()
                        .strokeBorder(.white, lineWidth: 2)
                        .background(Circle().foregroundColor(Color.blue))
                        .background(
                            Circle()
                                .foregroundColor(Color.blue)
                                .frame(width: 40, height: 40)
                                .opacity(0.2)
                        )
                        .frame(width: 20, height: 20)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
