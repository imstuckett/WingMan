//
//  VenueAnnotation.swift
//  Wing Man
//
//  Created by Sam Tuckett on 25/02/2018.
//  Copyright © 2018 Samuel Tuckett. All rights reserved.
//

import UIKit
import MapKit

class VenueAnnotation: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var identifier = "Pin"
    var historyText = ""
    var goingPhoto:UIImage!
    var myPhoto:UIImage!
    var venuePhoto:UIImage!
    var imGoing:UIImage!
    var goingOne:UIImage!
    var goingTwo:UIImage!
    var goingThree:UIImage!
    var goingFour:UIImage!
    var dealPhoto:UIImage!
    
    init(coordinate:CLLocationCoordinate2D,title:String?,subtitle:String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
