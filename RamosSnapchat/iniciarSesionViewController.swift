//
//  ViewController.swift
//  RamosSnapchat
//
//  Created by Karen Ramos Rodriguez on 7/11/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth


class iniciarSesionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail:emailTextField.text!,password:
                            passwordTextField.text!) { (user, error) in print ("Intentando Iniciar Sesion")
            if error != nil{
                print ("Se presento el siguient error: \(error)")
            }else{
                print ("Inicio de sesion exitoso")
            }
        }
    }
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
}

