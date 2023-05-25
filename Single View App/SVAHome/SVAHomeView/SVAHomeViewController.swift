//
//  SVAHomeViewController.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import UIKit

class SVAHomeViewController: UIViewController {
    
    
    // MARK: OUTLET
    @IBOutlet weak var getRatesButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    
    // MARK: PROPERTY
    internal var presenter         :   SVAHomeViewControllerToPresenter?
    
    // MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupUI()
        
    }
    
    // MARK: FUNC
    private func setup() {
        
    }
    
    private func setupUI() {
        
        titleLabel.text = "Currency Converter"
    }
    
    // MARK: FUNC BUTTON
    @IBAction func getRatesAction(_ sender: Any) {
        
        
        if let presenter {
            print("XXXX 0000")
            presenter.getRates()
        }
        
    }
    
    
}


extension SVAHomeViewController : SVAHomePresenterToViewController {
    
    func setRates(success: RatesResponse?, failed: String?) {
         
        if let model = success {
            
            dump(success)
            
            DispatchQueue.main.async {
                
                self.bodyTextView.text = "\(model)"
                
                
                
            }
            
        } else {
            print("\(failed ?? "Ocurrio un Error")")
        }
        
    }
    
}
