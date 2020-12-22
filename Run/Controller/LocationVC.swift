//
//  LocationVC.swift
//  Run
//
//  Created by Eslam Elshaht on 12/19/20.
//

import UIKit
import MapKit
class LocationVC: UIViewController,MKMapViewDelegate {
    var manager: CLLocationManager?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.activityType = .fitness
    }
    func checkLocationAuthStatus(){
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse{
            manager?.requestWhenInUseAuthorization()
        }
    }
}
