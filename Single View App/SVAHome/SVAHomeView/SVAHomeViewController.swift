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
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
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
        activityIndicator.isHidden = true
    }
    
    private func setupUI() {
        
        titleLabel.text = "Currency Converter"
    }
    
    // MARK: FUNC BUTTON
    @IBAction func getRatesAction(_ sender: Any) {
        
        
        if let presenter {
            
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
            
            print("XXXX 0000")
            presenter.getRates()
        }
        
    }
    
    
}


extension SVAHomeViewController : SVAHomePresenterToViewController {
    
    func setRates(success: RatesResponse?, failed: String?) {
         
        
        if let rates = success?.rates {
            
            dump(success)
            
            DispatchQueue.main.async {
                
                
                
                let ratesBody = """
USD: \(rates["USD"] ?? 0.0)

EUR: \(rates["EUR"] ?? 0.0)

CAD: \(rates["CAD"] ?? 0.0)

BHD: \(rates["BHD"] ?? 0.0)

PLN: \(rates["PLN"] ?? 0.0)

"""
                
                self.bodyTextView.text = "\(ratesBody)"
                
            }
            
        } else {
            print("\(failed ?? "Ocurrio un Error")")
        }
        
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
        
        
    }
    
}
