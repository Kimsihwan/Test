//
//  MapViewController.swift
//  Test
//
//  Created by D7703_25 on 2018. 6. 19..
//  Copyright © 2018년 Ksh. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var detailMapview: MKMapView!
    
    var name: String = ""
    var address: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = name
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address, completionHandler: {
            (placemarks: [CLPlacemark]?, error: Error?) -> Void in
            
            if let error = error {
                print(error)
                return
            }
            
            if placemarks != nil {
                let placemark = placemarks![0]
                
                // Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.name
                annotation.subtitle = self.address
                
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    self.detailMapview.addAnnotation(annotation)
                    
                    // Set zoom level
                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 700, 700)
                    self.detailMapview.setRegion(region, animated: true)
                    self.detailMapview.selectAnnotation(annotation, animated: true)
                }
            }
        })
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
