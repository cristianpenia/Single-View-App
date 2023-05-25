//
//  SVAHomeMain.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import UIKit

// XXXX recorrido de la peticion

public class SVAHomeMain {
    
    public static func createModule()   ->  UIViewController {
        
        let viewController  :   SVAHomeViewController?   =   SVAHomeViewController()
        
        if let view = viewController {
            
            let presenter   =   SVAHomePresenter()
            let interactor  =   SVAHomeInteractor()
            let router      =   SVAHomeRouter()
            
            view.presenter  =   presenter
            
            presenter.view          =   view
            presenter.interactor    =   interactor 
            presenter.router        =   router
            
            interactor.presenter    =   presenter
            
            router.viewController   =   view
            
            return view
        }
        
        return UIViewController()
        
    }
}
