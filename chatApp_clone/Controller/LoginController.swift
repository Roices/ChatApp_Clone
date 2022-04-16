//
//  ViewController.swift
//  chatApp_clone
//
//  Created by Tuan on 07/04/2022.
//

import UIKit

class LoginController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "Login", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! Login
        view.delegate = self
        self.navigationItem.backButtonTitle = ""
        
        self.view.addSubview(view)
        
    }


}

extension LoginController: LoginViewDelegate{
    func LoginToApp() {
        let mapView = self.storyboard?.instantiateViewController(withIdentifier: "MenuController") as! MenuController
        mapView.view.backgroundColor = .purple
        self.navigationController?.pushViewController(mapView, animated: true)
    }
    
    func ForgotPassword() {
        
        let mapView = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        mapView.view.backgroundColor = .purple
        self.navigationController?.pushViewController(mapView, animated: true)
        print("ForgotPassword")
    }
    
    func Register() {
        let mapView = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        mapView.view.backgroundColor = .purple
        self.navigationController?.pushViewController(mapView, animated: true)
        print("Register")
    }
    

    
    
}
