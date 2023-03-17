//
//  ViewController2.swift
//  instagarmproject
//
//  Created by monil sojitra on 20/01/23.
//

import UIKit

class ViewController2: UIViewController {
  
    @IBOutlet weak var troubleLabel: UILabel!
    
    @IBOutlet weak var descriptionTextview: UITextView!
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
  
    
    @IBOutlet weak var orLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func resetPasswordButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func continueFbButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func backToLoginButtonAction(_ sender: UIButton) {
    }
    
    
    @IBAction func usernameButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func phoneButtonAction(_ sender: UIButton) {
        navigate3()
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        navigate4()
    }
    func navigate3(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    func navigate4(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller3") as! viewcontroller3
        navigationController?.pushViewController(navigation, animated: true)
        
    }

}
