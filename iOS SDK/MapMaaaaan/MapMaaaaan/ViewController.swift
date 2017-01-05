//
//  ViewController.swift
//  MapMaaaaan
//
//  Created by MajdEddin on 5/31/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate{
    
    @IBOutlet weak var myMaaap: MKMapView!
    
    var manager = CLLocationManager()
    
    var lat   = 31.971609
    var longt = 35.833208
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //addAnootationToMap()
        getUserLocation()
    
    }

    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation:CLLocation = locations[0] as CLLocation
        manager.stopUpdatingLocation()
        
        let userLatitude = userLocation.coordinate.latitude
        let userLongitude = userLocation.coordinate.longitude
        
        
        // display user location
        let location = CLLocationCoordinate2D(latitude: userLatitude, longitude: userLongitude)
        
        let r = MKCoordinateRegionMakeWithDistance(location, 500, 500)
        myMaaap.setRegion(r, animated: true)
        
        
    }
    
    func getUserLocation(){
        
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
        myMaaap.showsUserLocation = true
}
    
    
    
    
    func addAnootationToMap(){
        let location = CLLocationCoordinate2DMake(lat, longt)
        
        //let span = MKCoordinateSpanMake(0.002 , 0.002)
        //let region = MKCoordinateRegionMake(location, span)
        
        let region = MKCoordinateRegionMakeWithDistance(location, 1500, 1500)
        myMaaap.setRegion(region, animated: true)
////
        let annotation = MKPointAnnotation()
        annotation.coordinate   = location
        annotation.title        = "my title"
        annotation.subtitle     = " my sub title "
        myMaaap.addAnnotation(annotation)
    }

}

