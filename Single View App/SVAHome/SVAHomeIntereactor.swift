//
//  SVAHomeIntereactor.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import Foundation


class SVAHomeInteractor: NSObject {
    
    public weak var presenter    :   SVAHomeInteractorToPresenter?
    
    let pathBase = "http://data.fixer.io/api/latest?access_key=80369a8e229f1799dd53599fad8ebd05"
    
    let api = "api/"
    
    let epLaster = "latest"
    
    
}

extension SVAHomeInteractor  :  SVAHomePresenterToInteractor {
    
    func getRates() {
        
        if let presenter {
            
            guard let url = URL(string: pathBase) else {
                print("Error: cannot create URL")
                return
            }
            // Create the url request
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard error == nil else {
                    
                    presenter.setRates(success  :  .none,
                                       failed   :  "ocurrio un error")
                    
                    return
                }
                guard let data = data else {
                    
                    presenter.setRates(success  :  .none,
                                       failed   :  "ocurrio un error")
                    
                    return
                }
                guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode || 104 != response.statusCode else {
                    
                    presenter.setRates(success  :  .none,
                                       failed   :  "ocurrio un error")
                    
                    return
                }
                
                do {
                    let modelResponse: RatesResponse = try JSONDecoder().decode(
                        RatesResponse.self,
                        from  :  data
                    )
                    
//                    dump(modelResponse)
                    
                    presenter.setRates(success: modelResponse, failed: .none)
                    
                } catch {
                    presenter.setRates(success  :  .none,
                                       failed   :  "ocurrio un error")
                    return
                }
            }.resume()
            
            
        }
    }
    
}

extension SVAHomeInteractor: URLSessionDelegate {
    
    public func urlSession(
        _ session             : URLSession,
        didReceive challenge  : URLAuthenticationChallenge,
        completionHandler     :  @escaping (URLSession.AuthChallengeDisposition,
                                            URLCredential?) -> Void
    ) {
        
        //Trust the certificate even if not valid
        let urlCredential = URLCredential(trust: challenge.protectionSpace.serverTrust!)
        
        completionHandler(
            .useCredential,
            urlCredential
        )
    }
    
}
