//
//  ViewController5.swift
//  instagarmproject
//
//  Created by monil sojitra on 27/01/23.
//

import UIKit

class ViewController5: UIViewController {

    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var des2Textview: UITextView!
    
    @IBOutlet weak var phoneNumberTextfield: UITextField!
    
    @IBOutlet weak var orLabelButtonAction: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func usernameButtonAction(_ sender: UIButton) {
        navigate4()
    }
    
    @IBAction func phoneButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func inButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        navigate5()
    }
    
    @IBAction func resetPasswordButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func backToLoginButtonAction(_ sender: UIButton) {
    }
    func navigate4(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.popViewController(animated: true)
    }
    func navigate5(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller3") as! viewcontroller3
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    
    
    
}
