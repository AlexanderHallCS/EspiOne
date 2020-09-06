//
//  MapViewController.swift
//  EspiONE
//
//  Created by Alexander Hall on 9/6/20.
//  Copyright © 2020 Hall Inc. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.mapType = .satelliteFlyover
        
        // Do any additional setup after loading the view.
    }
    

    private func addAnnotation(named name: String, latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
