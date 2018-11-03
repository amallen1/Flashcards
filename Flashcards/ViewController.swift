//
//  ViewController.swift
//  Flashcards
//
//  Created by Aniya Allen on 10/13/18.
//  Copyright © 2018 Aniya Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    
    @IBOutlet weak var btnOptionOne: UIButton!
    
    @IBOutlet weak var btnOptionTwo: UIButton!
    

    @IBOutlet weak var btnOptionThree: UIButton!
    

    
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
        
        frontLabel.layer.cornerRadius = 20.0;
        frontLabel.clipsToBounds = true;
        backLabel.layer.cornerRadius = 20.0;
        backLabel.clipsToBounds = true;
        
        card.layer.cornerRadius = 30.0
        card.clipsToBounds = true;
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        btnOptionOne.layer.borderWidth = 3.0;
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1);
        btnOptionOne.layer.cornerRadius = 10.0;
        
        btnOptionTwo.layer.borderWidth = 3.0;
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1);
        btnOptionTwo.layer.cornerRadius = 10.0;
        
        btnOptionThree.layer.borderWidth = 3.0;
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1);
        btnOptionThree.layer.cornerRadius = 10.0;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden == false){
            frontLabel.isHidden = true;
        }else{
            frontLabel.isHidden = false;
        }
    
    }
    
    func updateFlashcard(question:String , answer:String) {
        
    }
    
    override func prepare(for segue : UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        
        let creationController  = navigationController.topViewController as!
        CreationViewController
        
        creationController.flashcardsController = self
    }
    
    
    
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true;
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true;
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true;
    }
}

