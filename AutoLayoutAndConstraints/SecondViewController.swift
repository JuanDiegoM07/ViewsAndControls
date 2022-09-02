//
//  SecondViewController.swift
//  AutoLayoutAndConstraints

import UIKit
import WebKit
import MapKit

class SecondViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var fakeView: UIView!
    @IBOutlet weak var myWebView2: WKWebView!
    @IBOutlet weak var myMapView: MKMapView!
    
    // MARK: - IBActions
     
    @IBAction func action() {
        fakeView.isHidden.toggle()
    }
    
    // MARK: - Life cicle view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView2.load(URLRequest(url: URL(string:"https://facebook.com")!))
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        
        title = "Hola"
         
    }
    
}
