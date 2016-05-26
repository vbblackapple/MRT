//
//  StationDetailViewController.swift
//  MRT
//
//  Created by Lin-Kai Huang on 5/19/16.
//  Copyright © 2016 Lin-Kai Huang. All rights reserved.
//

import UIKit

class StationDetailViewController: UIViewController {

   
    @IBOutlet weak var StationNameLabel: UILabel!
    @IBOutlet weak var LineOne: UILabel!
    @IBOutlet weak var LineTwoLeft: UILabel!
    @IBOutlet weak var LineTwoRight: UILabel!
    
    var StationName = ""
    var StationLineAA = ""
    var StationLineB = ""
    var StationLineC = ""
    var howmany = 0
    var LALA = ["文湖線","松山新店線","板南線","淡水信義線","中和新蘆線","貓空纜車","新北投支線","小碧潭支線"]
    
    
    func what(S : String) -> Int{
        var ONE : Character = "!"
        var TWO : Character = "!"

        var j = 0
        var result = 0
        
        for character in S.characters {
            if j==0{
              ONE = character
            }
            else if j==1{
              TWO = character
            }
            j += 1
        }
        ////////////////
        if ONE == "B" {
            if TWO == "R"{
              result = 0
            }
            else {result = 2}
        }
        else if ONE == "G"{
          if TWO == "0"{
               result = 7
            }
          else{ result = 1}
        }
        else if ONE == "R"{
            if TWO == "2" {
                result = 6
            }
            else{result = 3}
        }
        else if ONE == "O" {
        result = 4
        }
        else if ONE == "M"{
        result = 5
        }
        
        return result
    }
    
    //文湖線","松山新店線","板南線","淡水信義線","中和新蘆線","貓空纜車","新北投支線","小碧潭支線
    func Color(LineNumber:String) -> UIColor {
        if LineNumber.containsString("文湖線") {
            return UIColor(red: 158/255, green: 101/255, blue: 46/255, alpha: 1)
        } else if LineNumber.containsString("松山新店線") {
            return UIColor(red: 0/255, green: 119/255, blue: 73/255, alpha: 1)
        } else if LineNumber.containsString("中和新蘆線") {
            return UIColor(red: 255/255, green: 163/255, blue: 0/255, alpha: 1)
        } else if LineNumber.containsString("板南線") {
            return UIColor(red: 0/255, green: 94/255, blue: 184/255, alpha: 1)
        } else if LineNumber.containsString("淡水信義線") {
            return UIColor(red: 203/255, green: 44/255, blue: 48/255, alpha: 1)
        } else if LineNumber.containsString("貓空纜車") {
            return UIColor(red: 119/255, green: 185/255, blue: 51/255, alpha: 1)
        } else if LineNumber.containsString("小碧潭支線") {
            return UIColor(red: 206/255, green: 220/255, blue: 0/255, alpha: 1)
        } else {
            return UIColor(red: 248/255, green: 144/255, blue: 165/255, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StationNameLabel.text = StationName
        self.navigationItem.title = StationName
        if howmany == 1{
            LineOne.text = LALA[what(StationLineAA)]
            LineOne.backgroundColor = Color(LALA[what(StationLineAA)])
            LineOne.textColor = UIColor.whiteColor()
            LineTwoRight.hidden = true
            LineTwoLeft.hidden = true
        }
        else {
            LineTwoLeft.text = LALA[what(StationLineB)]
            LineTwoLeft.backgroundColor = Color(LALA[what(StationLineB)])
            LineTwoLeft.textColor = UIColor.whiteColor()
            LineTwoRight.text = LALA[what(StationLineC)]
            LineTwoRight.backgroundColor = Color(LALA[what(StationLineC)])
            LineTwoRight.textColor = UIColor.whiteColor()
            LineOne.hidden = true
            //print(StationLineC)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
