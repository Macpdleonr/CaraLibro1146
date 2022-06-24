//
//  RegistroViewController.swift
//  CaraLibro1146
//
//  Created by user191544 on 6/24/22.
//

import UIKit
import FirebaseAuth

class RegistroViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var EmailRegisTextField: UITextField!
    @IBOutlet weak var contraRegisTextField: UITextField!
    @IBOutlet weak var registrarButton: UIButton!
    @IBOutlet weak var cancelRegisButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Registrar Usuario"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registrarButtonAction(_ sender: Any) {
        
        if let email = EmailRegisTextField.text, let password = contraRegisTextField.text{
            Auth.auth().createUser(withEmail: email, password: password){ (result, error) in
                if let result = result, error == nil {
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!, provider: .basic), animated: true)
                }else{
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error  registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alertController, animated: true, completion: nil)
                }
        }
        
        
        }
    }

    @IBAction func cancelRegisButtonAction(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
