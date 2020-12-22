//
//  ViewController.swift
//  Run
//
//  Created by Eslam Elshaht on 12/16/20.
//

import UIKit
import MapKit
class BeginRunVC: LocationVC {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationAuthStatus()
        mapView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self
        manager?.startUpdatingLocation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        manager?.stopUpdatingLocation()
    }
    
    @IBAction func locationCenterBtnPressed(_ sender: Any) {
        
    }
    @IBAction func startRunPressed(_ sender: UIButton) {
//        let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrentRunVC") as? CurrentRunVC
//        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
extension BeginRunVC: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse{
            checkLocationAuthStatus()
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
        }
    }
}

