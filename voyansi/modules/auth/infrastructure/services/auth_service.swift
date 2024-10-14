//
//  auth_service.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 13/10/24.
//
import SwiftUI
class AuthService {
    private static let _instance: AuthService = AuthService()
    private init(){}
    static var shared: AuthService {
        get { return AuthService._instance }
    }
    
    static var baseUrl: String = "ASKALEJANDROFORBACKENDURL!"
    
    func login(email: String,password: String){
        URLSession.shared.dataTask(with: URL(string: AuthService.baseUrl)!){data,response,error in
            if let error = error {
                print(error)
                return
            }
            
            print(data!)
        }.resume()
    }
}


