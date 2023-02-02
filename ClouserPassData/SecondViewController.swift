//
//  SecondViewController.swift
//  ClouserPassData
//
//  Created by Guru Mahan on 16/12/22.
//

import UIKit

//typealias v2CB = ( _ infoToReturn :String) ->()
class SecondViewController: UIViewController {
    
    var callForword: ((_ infoToReturn: String) -> ())?
   // var callForword:(String?) -> () = { _ in}

    @IBOutlet weak var SvcImage: UIImageView!
    @IBOutlet weak var SvcTextField: UITextField!
    var getValue = ""
    var callBack:(String,UIImage?) ->() = {_,_ in }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SvcImage.image = UIImage(named: "pelex")
        guard let cb = callForword else {return}
        cb(SvcTextField.text ?? "")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SvcButton(_ sender: Any) {
        
       
        if  let text = SvcTextField.text ,
            let image = SvcImage.image{
            callBack(text, image)
            
        }
        self.navigationController?.popViewController(animated: true)
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
