//
//  ScoreViewController.swift
//  Basket Score
//
//  Created by Jose Javier on 18/08/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var lbTime1: UILabel!
    @IBOutlet weak var lbTime2: UILabel!
    
    // MARK: - Properties
    var time1: String = ""
    var time2: String = ""
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbTime1.text = time1
        lbTime2.text = time2
    }
    

}
