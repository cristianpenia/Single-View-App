//
//  SVAHomeViewController.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import UIKit

class SVAHomeViewController: UIViewController {
    
    
    //
    
    //
    internal var presenter         :   SVAHomeViewControllerToPresenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
}


extension SVAHomeViewController : SVAHomePresenterToViewController {
    
    
}
