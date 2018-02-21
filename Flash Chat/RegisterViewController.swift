//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//
// SWIFT CLOSURES (ADVANCED SWIFT) was incredibly useful. Dramatic ways to reduce amount of code needed to write. 
// https://www.udemy.com/ios-11-app-development-bootcamp/learn/v4/t/lecture/8440238?start=0

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("registration successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }

        
        //TODO: Set up a new user on our Firbase database
        
        

        
        
    } 
    
    
}
