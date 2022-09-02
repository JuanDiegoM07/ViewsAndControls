//
//  PinkViewController.swift
//  AutoLayoutAndConstraints
//
//

import UIKit

class PinkViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    
    @IBOutlet weak var myLabel: UILabel!
    
    // MARK: - Life cicle view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.isHidden = true
        mySearchBar.delegate = self
    }

}

// MARK: - UISearchBarDelegate
extension PinkViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        
        myLabel.text = searchBar.text
        myLabel.isHidden = false
    }
    
}
