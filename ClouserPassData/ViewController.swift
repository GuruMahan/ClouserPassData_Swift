//
//  ViewController.swift
//  ClouserPassData
//
//  Created by Guru Mahan on 16/12/22.
//

import UIKit



class ViewController: UIViewController {

   // var callForword:(_ text:String) -> () = { _ in }
    @IBOutlet weak var vcImage: UIImageView!
    @IBOutlet weak var vcLabel: UILabel!
    @IBOutlet weak var vcButton: UIButton!

    override func viewDidLoad() {
        vcLabel.text = ""
        vcLabel.backgroundColor = .gray
        
      
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func vcButtonAction(_ sender:Any) {
        if vcLabel.text == "" {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVc") as! SecondViewController
            
            vc.callForword = {passText in
                
                vc.SvcTextField.text = self.vcLabel.text
                
            }
           
           
            vc.callBack = {Text,Img in
                self.vcLabel.text = Text
                
                if let getImg = Img{
                    
                    self.vcImage.image = getImg
                }
                
            }
            self.navigationController?.pushViewController(vc, animated: true)
        }else if vcLabel.text != "" {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVc") as! ThirdViewController
            self.navigationController?.pushViewController(vc, animated: true)

            
            
        }
       
        
    }
    
    

}

