//
//  SVAHomeIntereactor.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import Foundation


class SVAHomeInteractor {
    
    public weak var presenter    :   SVAHomeInteractorToPresenter?
    
    init() {
        
    }
    
}

extension SVAHomeInteractor  :  SVAHomePresenterToInteractor {
    
    
}
