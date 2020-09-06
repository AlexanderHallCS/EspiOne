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
        addAnnotation(named: "U.S. Embassy, London, U.K.", latitude: 51.4826, longitude: 0.1322)
        addAnnotation(named: "U.S. Embassy, Rome, Italy", latitude: 41.9066, longitude: 12.4908)
        addAnnotation(named: "U.S. Embassy, Berlin, Germany", latitude: 52.5157, longitude: 13.3785)
        addAnnotation(named: "U.S. Embassy, Paris, France", latitude: 48.867886, longitude: 2.320733)
        addAnnotation(named: "U.S. Embassy, Ottawa, Canada", latitude: 45.427858, longitude: -75.695869)
        addAnnotation(named: "U.S. Embassy, Canberra, Australia", latitude: -35.307222, longitude: 149.117222)
        addAnnotation(named: "U.S. Embassy, Beijing, China", latitude: 39.953, longitude: 116.459)
        addAnnotation(named: "U.S. Embassy, Pretoria, South Africa", latitude: -25.746034, longitude: 28.223922)
        addAnnotation(named: "U.S. Embassy, Moscow, Russia", latitude: 55.755556, longitude: 37.583056)
        addAnnotation(named: "U.S. Embassy, Tokyo, Japan", latitude: 35.6688, longitude: 139.7433)
        addAnnotation(named: "U.S. Embassy, New Dehli, India", latitude: 28.5975, longitude: 77.1881)
        addAnnotation(named: "U.S. Embassy, Cairo, Egypt", latitude: 30.041292, longitude: 31.233411)
        addAnnotation(named: "U.S. Embassy, Helsinki, Finland", latitude: 60.157350, longitude: 24.960861)
        addAnnotation(named: "U.S. Embassy, Reykjavik, Iceland", latitude: 64.143720, longitude: -21.937690)
        addAnnotation(named: "U.S. Embassy, Tehran, Iran", latitude: 35.708, longitude: 51.424)
        addAnnotation(named: "U.S. Embassy, Jerusalem, Israel", latitude: 31.7477, longitude: 35.2246)
        addAnnotation(named: "U.S. Embassy, Kingston, Jamaica", latitude: 18.018548, longitude: -76.764822)
        addAnnotation(named: "U.S. Embassy, Mexico City, Mexico", latitude: 19.428, longitude: -99.166)
        addAnnotation(named: "U.S. Embassy, Wellington, New Zealand", latitude: -41.272878, longitude: 174.779008)
        addAnnotation(named: "U.S. Embassy, Panama City, Panama", latitude: 8.999421, longitude: -79.561952)
        addAnnotation(named: "U.S. Embassy, Manila, Philippines", latitude: 14.5772, longitude: 120.9777)
        addAnnotation(named: "U.S. Embassy, Doha, Qatar", latitude: 25.303636, longitude: 51.471234)
        addAnnotation(named: "U.S. Embassy, Seoul, South Korea", latitude: 37.573138, longitude: 126.977867)
        addAnnotation(named: "U.S. Embassy, Bern, Switzerland", latitude: 46.943433, longitude: 7.438305)
        addAnnotation(named: "U.S. Embassy, Harare, Zimbabwe", latitude: -17.822858, longitude: 31.043869)
        addAnnotation(named: "U.S. Embassy, Sao Paulo, Brazil", latitude: -23.629242, longitude: -46.697516)
        addAnnotation(named: "U.S. Embassy, Caracas, Venezuela", latitude: 10.472736, longitude: -66.871479)
        
    }
    

    private func addAnnotation(named name: String, latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let annotation = MKPointAnnotation()
        annotation.title = name
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        mapView.addAnnotation(annotation)
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
