//
//  SVAHomeProtocol.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import Foundation

protocol SVAHomeViewControllerToPresenter    :  AnyObject {
    
//    func goToQR()
//    func goToReference()
//    func goToCard()
    
}


protocol SVAHomePresenterToInteractor        :   AnyObject {
    
//    func signIn( model arg : UserRequest )
    
}


protocol SVAHomeInteractorToPresenter        :   AnyObject {
    
//    func successSignIn( model arg  : UserResponse )
//    func failureSignIn( messge arg : String )
    
}


protocol SVAHomePresenterToViewController    :   AnyObject {
    
//    func successSignIn( model arg  : UserResponse )
//    func failureSignIn( messge arg : String )
    
}


protocol SVAHomePresenterToRouter            :   AnyObject {
    
    func goTo()
    
}
