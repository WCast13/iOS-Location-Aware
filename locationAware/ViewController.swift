//
//  ViewController.swift
//  locationAware
//
//  Created by WilliamCastellano on 1/22/17.
//  Copyright © 2017 WilliamCastellano. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

  @IBOutlet var latitude: UILabel!
  @IBOutlet var longitude: UILabel!
  @IBOutlet var course: UILabel!
  @IBOutlet var speed: UILabel!
  @IBOutlet var altitude: UILabel!
  @IBOutlet var address: UILabel!
  
  var locationManager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.requestWhenInUseAuthorization()
    locationManager.startUpdatingLocation()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
    let userLocation: CLLocation = locations[0]
//    print(userLocation)
    
    latitude.text = String(userLocation.coordinate.latitude)
    longitude.text = String(userLocation.coordinate.longitude)
    
    course.text = String(userLocation.course)
    speed.text = String(userLocation.speed)
    altitude.text = String(userLocation.altitude)
    
  }

}

