//
//  ViewController.swift
//  instagarmproject
//
//  Created by monil sojitra on 20/01/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var orLabel: UILabel!
   
    
    @IBOutlet weak var userNameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.endEditing(true)
        
    }
    
    
   
    @IBAction func facebookButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func createNewAccountAction(_ sender: UIButton) {
        navigate2()
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        navigate()
    }
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if userNameTextfield.text == "" && passwordTextfield.text == ""{
            showalert(message: "Please Enter Your User Name & Password")
        }
        else if userNameTextfield.text == ""{
            showalert(message: "Please Enter Your User Name")
        }
        else if passwordTextfield.text == ""{
            showalert(message: "Please Enter Your Password")
            
        }
         if userNameTextfield.text == "monil_sojitra_" && passwordTextfield.text == "4242" {
             navigate1()
            
        }
        else{
            passwordalert()
        }
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func passwordalert(){
        let alert = UIAlertController(title: "Incorrect password", message: "The Password you Entered is incorrect.Please try again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
//    func usernamealert(){
//        let alert = UIAlertController(title: "incorrect username", message:"The username you entered is incorrect.Plrase try again ", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default))
//        present(alert, animated: true)
//    }
//
    func showalert(message:String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    
    }

    func navigate(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    func navigate1(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller3") as! viewcontroller3
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    func navigate2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(navigation, animated: true)
        
    }
}

