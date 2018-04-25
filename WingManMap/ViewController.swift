//
//  ViewController.swift
//  Wing Man
//
//  Created by Sam Tuckett on 16/02/2018.
//  Copyright © 2018 Samuel Tuckett. All rights reserved.
//

 //The Cider Press: 51.474330 , -2.591861
 //Gallimaufry: 51.471687 , -2.592693
 //The Anchor: 51.481319 , -2.587699
 //Cat and Wheel: 51.468831 , -2.593090
 //Commercial Rooms: 51.454485 , -2.594491
 //SU: 51.500535 , -2.551585
 //Blue Lagoon: 51.471410 , -2.592993
 //Walkabout: 51.454309 , -2.594415

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,MKMapViewDelegate, CLLocationManagerDelegate {
    
    //Properties and outlets
    var coordinate2D = CLLocationCoordinate2DMake(51.472731 , -2.591178)
    var locationManager = CLLocationManager()
    @IBOutlet weak var mapView: MKMapView!
    
    //Actions
    @IBAction func locationPicker(_ sender: UISegmentedControl) {
        disableLocationServices()
        let index = sender.selectedSegmentIndex
        switch index {
        case 0: //Cider Press
           coordinate2D = CLLocationCoordinate2DMake(51.474330 , -2.591861)
        case 1: //Gallimaufry
            coordinate2D = CLLocationCoordinate2DMake(51.471687 , -2.592693)
        case 2: //The Anchor
            coordinate2D = CLLocationCoordinate2DMake(51.481319 , -2.587699)
        case 3: //Cat and Wheel
            coordinate2D = CLLocationCoordinate2DMake(51.468831 , -2.593090)
        case 4: //Commercial Rooms
            coordinate2D = CLLocationCoordinate2DMake(51.454485 , -2.594491)
        case 5: //SU
            coordinate2D = CLLocationCoordinate2DMake(51.500535 , -2.551585)
        case 6: //Blue Lagoon
            coordinate2D = CLLocationCoordinate2DMake(51.471410 , -2.592993)
        case 7: //Walkabout
            coordinate2D = CLLocationCoordinate2DMake(51.454309 , -2.594415)
        default:
            coordinate2D = CLLocationCoordinate2DMake(51.472731 , -2.591178)
        }
        updateMapRegion(rangeSpan: 350)
    }
    
    @IBAction func findMe(_ sender: UIButton) {
        setupCoreLocation()
    }
    
    //Instance Methods
    func updateMapRegion(rangeSpan:CLLocationDistance){
        let region = MKCoordinateRegionMakeWithDistance(coordinate2D, rangeSpan, rangeSpan)
        mapView.region = region
    }
    
    //Location
    func setupCoreLocation(){
        switch CLLocationManager.authorizationStatus(){
        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
            break
        case .authorizedAlways:
            enableLocationServices()
        default:
            break
        }
    }
    
    func enableLocationServices(){
        if CLLocationManager.locationServicesEnabled(){
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = true
            
        }
    }
    
    func disableLocationServices(){
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways:
            print("Authorized")
        case .denied, .restricted:
            print("Not Authorized")
        default:
            break
        }
    }
    
    //Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        mapView.addAnnotations(VenueAnnotations().annotations)
        updateMapRegion(rangeSpan: 350)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Annotation delegates
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        var annotationView = MKAnnotationView()
        guard let annotation = annotation as? VenueAnnotation
        else{
                return nil
        }
        if let dequedView = mapView.dequeueReusableAnnotationView(withIdentifier: annotation.identifier)  {
            annotationView = dequedView
        } else {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: annotation.identifier)
        }
        annotationView.image = UIImage(named: "pub pin")
        annotationView.canShowCallout = true
        let paragraph = UILabel()
        paragraph.numberOfLines = 0
        paragraph.font = UIFont.preferredFont(forTextStyle: .caption1)
        paragraph.text = annotation.subtitle
        paragraph.numberOfLines = 1
        paragraph.adjustsFontSizeToFitWidth = true
        annotationView.detailCalloutAccessoryView = paragraph
        annotationView.leftCalloutAccessoryView = UIImageView(image: annotation.goingPhoto)
        annotationView.rightCalloutAccessoryView = UIButton(type: .infoLight)
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view:MKAnnotationView, calloutAccessoryControlTapped control:UIControl){
        let vc = AnnotationDetailViewController(nibName: "AnnotationDetailViewController", bundle: nil)
        vc.annotation = view.annotation as! VenueAnnotation
        present(vc, animated: true, completion: nil)
        
    }
    
    func locationManager(_ manager: CLLocationManager, locations: [CLLocation]) {
        let location = locations.last!
        coordinate2D = location.coordinate
        updateMapRegion(rangeSpan: 350)
    }

}

