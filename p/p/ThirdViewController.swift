//
//  ThirdViewController.swift
//  p
//
//  Created by Nithin on 31/10/23.
//

import UIKit

class ThirdViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        print(username.text!)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var repass: UITextField!
    @IBOutlet weak var email: UITextField!
    
    
    @IBAction func s(_ sender: Any) {
        let pass = pass.text!;
        let repass = repass.text!;
        let email = email.text!;
        if(pass.isEmpty||repass.isEmpty||email.isEmpty){
            showAlert(title: "Invalid", message: "Empty Strings are submitted")
        }
        else if(pass != repass ){
            showAlert(title: "Password does not match", message: "Please check the passowrd entered ")
        }
        else{
            let newuser = (email:email,password:pass);
            users.append(newuser)
            name2 = username.text!
            performSegue(withIdentifier: "signup", sender: self)
        }
    }
    private func showAlert(title: String,message:String){
        let alert1 = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        alert1.addAction(UIAlertAction(title: "Ok", style:.cancel))
        present(alert1,animated: true,completion: nil)
    }
}
