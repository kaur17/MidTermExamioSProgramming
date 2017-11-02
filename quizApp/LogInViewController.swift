//
//  LogInViewController.swift
//  quizApp
//
//  Created by MacStudent on 2017-10-24.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit
class LogInViewController: UIViewController {
    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var btnlogin: UIButton!
    @IBOutlet weak var rememberme: UISwitch!
    var myUserDefault: UserDefaults!
    override func viewDidLoad() {
        super.viewDidLoad()
        myUserDefault  = UserDefaults.standard
        if let email = myUserDefault.value(forKey: "email"){
            txtemail.text = email as? String
        }
        if let password = myUserDefault.value(forKey: "Password"){
            txtpassword.text = password as? String
        }
}
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func btnloginTapped(_ sender: UIButton)
    {
        if(txtemail.text == "navjot@" && txtpassword.text == "navjot123")
        {
            if rememberme.isOn{
                self.myUserDefault.set(txtemail.text, forKey: "email")
                self.myUserDefault.set(txtpassword.text, forKey: "password")
            }
            else{
                self.myUserDefault.removeObject(forKey: "email")
                self.myUserDefault.removeObject(forKey: "password")
            }
           displayMyAlertMessage(Message: "Welcome to Quiz")
        }
            else
        {
            print("Invalid LogIn")
            displayAlert(Message: "Invalid Login")
        }
    }
   func displayMyAlertMessage(Message: String)
   {
      let myAlert = UIAlertController(title: "", message: Message, preferredStyle: .alert)
       let OkAction = UIAlertAction(title: "OK", style: .default, handler:
       {action in self.performSegue(withIdentifier: "logintohomepage", sender: self)})
       myAlert.addAction(OkAction)
       self.present(myAlert, animated: true, completion: nil)

   }
    func displayAlert(Message: String)
    {
        let alert = UIAlertController(title: "", message: Message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func remembermechecked(_ sender: UISwitch) {
    }
}

