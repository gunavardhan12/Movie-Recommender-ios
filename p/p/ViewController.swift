//
//  ViewController.swift
//
//
//  Created by Nithin on 31/10/23.
//

import UIKit
var name2 = String()
var users : [(email:String, password:String)] = []
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func signin(_ sender: Any) {
        
        let email = signinMail.text!;
        let password = signinPass.text!;
        if(email == "Admin" && password == "Admin123"){
            name = signinMail.text!
            performSegue(withIdentifier: "signin", sender: self)
        }
        else if(email.isEmpty || password.isEmpty){
            showAlert(title: "Please Enter", message: "User or Password is Empty.")
        }
        else if let user = users.first(where: {$0.email == email}){
            if user.password == password {
                name = name2;
                performSegue(withIdentifier: "signin", sender: self)
            }
            else{
                showAlert(title: "Incorrect password", message: "Enter the correct password")
                
            }
        }
        else{
            showAlert(title: "User Not Found", message: "User with the given email does not exist")
        }
        
    }
    private func showAlert(title: String,message:String){
        let alert1 = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        alert1.addAction(UIAlertAction(title: "Ok", style:.cancel))
        present(alert1,animated: true,completion: nil)
    }
    @IBOutlet weak var signinPass: UITextField!
    @IBOutlet weak var signinMail: UITextField!
    @IBAction func signup(_ sender: Any) {
        performSegue(withIdentifier: "signup", sender: self)
    }
}

