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

    
    
}

extension SVAHomePresenter   :   SVAHomeInteractorToPresenter {
    
    
}


