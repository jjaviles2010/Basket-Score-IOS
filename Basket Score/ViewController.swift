//
//  ViewController.swift
//  Basket Score
//
//  Created by Jose Javier on 17/08/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tfTime1: UITextField!
    @IBOutlet weak var tfTime2: UITextField!
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scoreScreen = segue.destination as? ScoreViewController
        
        scoreScreen?.time1 = tfTime1.text ?? ""
        scoreScreen?.time2 = tfTime2.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}

