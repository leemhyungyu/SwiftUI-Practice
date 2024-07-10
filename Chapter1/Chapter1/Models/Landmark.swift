//
//  Landmark.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    private var imageName: String
    private var coordinates: Coordinates
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
