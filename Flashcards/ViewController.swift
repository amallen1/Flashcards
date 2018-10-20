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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    
}

