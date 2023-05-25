//
//  SVAHomeProtocol.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import Foundation

protocol SVAHomeViewControllerToPresenter    :  AnyObject {
    
    func getRates()
    
}


protocol SVAHomePresenterToInteractor        :   AnyObject {
    
    func getRates()
    
}


protocol SVAHomeInteractorToPresenter        :   AnyObject {
    
    func setRates(success: RatesResponse?, failed:String?)
    
}


protocol SVAHomePresenterToViewController    :   AnyObject {
    
    func setRates(success: RatesResponse?, failed:String?)
    
}


protocol SVAHomePresenterToRouter            :   AnyObject {
    
    func goTo()
    
}
