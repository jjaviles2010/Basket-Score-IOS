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
    @IBOutlet weak var tfScoreTeam1: UITextField!
    @IBOutlet weak var tfScoreTeam2: UITextField!
    
    @IBOutlet weak var btnOneTime1: UIButton!
    @IBOutlet weak var btnTwoTime1: UIButton!
    @IBOutlet weak var btnThreeTime1: UIButton!
    
    @IBOutlet weak var btnOneTime2: UIButton!
    @IBOutlet weak var btnTwoTime2: UIButton!
    @IBOutlet weak var btnThreeTime2: UIButton!
    
    @IBOutlet weak var tvMatches: UITextView!
    
    // MARK: - Properties
    var time1: String = ""
    var time2: String = ""
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbTime1.text = time1
        lbTime2.text = time2
    }
    
    // MARK: - IBActions
    
    @IBAction func addScore(_ sender: UIButton) {
        var pointsTeam1 = 0
        var pointsTeam2 = 0
        
        switch sender {
        case btnOneTime1:
            pointsTeam1 += 1
        case btnTwoTime1:
            pointsTeam1 += 2
        case btnThreeTime1:
            pointsTeam1 += 3
        case btnOneTime2:
            pointsTeam2 += 1
        case btnTwoTime2:
            pointsTeam2 += 2
        case btnThreeTime2:
            pointsTeam2 += 3
        default:
            break;
        }
        
        if(pointsTeam1 > 0){
            var scoreTeam1 = Int(tfScoreTeam1!.text!) ?? 0
            tfScoreTeam1.text = "\(scoreTeam1 + pointsTeam1)"
        }
        
        if(pointsTeam2 > 0){
            var scoreTeam2 = Int(tfScoreTeam2!.text!) ?? 0
            tfScoreTeam2.text = "\(scoreTeam2 + pointsTeam2)"
        }
        
    }
    
    @IBAction func registerMatch(_ sender: UIButton) {
        tvMatches.text += "\(time1) (\(tfScoreTeam1.text!)) X (\(tfScoreTeam2.text!)) \(time2)\n"
        
        tfScoreTeam1.text = "0"
        tfScoreTeam2.text = "0"
    }
    

}
