//
//  SVAHomePresenter.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import Foundation


class SVAHomePresenter {
    
    internal weak var view    :   SVAHomePresenterToViewController?
    internal var interactor   :   SVAHomePresenterToInteractor?
    internal var router       :   SVAHomePresenterToRouter?
    
}

extension SVAHomePresenter   :   SVAHomeViewControllerToPresenter {
    
    func getRates() {
        
        if let interactor {
            print("XXXX 0001")
            interactor.getRates()
        }
        
    }
    
}

extension SVAHomePresenter   :   SVAHomeInteractorToPresenter {
    
    func setRates(success: RatesResponse?, failed:String?) {
        if let view {
            print("XXXX 0003")
            view.setRates(success: success, failed: failed)
        }
    }
    
    
    
}


