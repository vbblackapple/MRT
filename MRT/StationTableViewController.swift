//
//  StationTableViewController.swift
//  MRT
//
//  Created by Lin-Kai Huang on 5/19/16.
//  Copyright © 2016 Lin-Kai Huang. All rights reserved.
//

import UIKit
import SwiftyJSON

var StationNames = [""]
var LineA = [""]
var LineB = [""]
var Line = [[""],[""],[""],[""],[""],[""],[""],[""]]
var Line2 = [[""],[""],[""],[""],[""],[""],[""],[""]]
var NewName = [[""],[""],[""],[""],[""],[""],[""],[""]]
var LineNumberA = [""]
var LineNumberB = [""]
var LineNumber = [[""],[""],[""],[""],[""],[""],[""],[""]]
var NumberofRows = 0
var LALA = ["文湖線","松山新店線","板南線","淡水信義線","中和新蘆線","貓空纜車","新北投支線","小碧潭支線"]
var howmanyLine = [[0],[0],[0],[0],[0],[0],[0],[0]]



class StationTableViewController: UITableViewController {




    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let path : String = NSBundle.mainBundle().pathForResource("MRT", ofType: "json") as String!
        let jsonData = NSData(contentsOfFile: path) as NSData!
        let json = JSON(data: jsonData)
        
        NumberofRows = json.count - 1
        
        
        for i in 0...NumberofRows{
            let Name : String = json[i]["name"].string as String!
            if i == 0 {
                StationNames = [Name]
            }
            else{
                StationNames.append(Name)
            }
            var keyfirst = [""]
            var keysecond = [""]
            let tmp  = json[i]["lines"]
            
            
            for (keys,iataCode )in tmp {
                keyfirst.append(keys as String!)
                keysecond.append(iataCode.string as String!)
            }
            
            let howmany = json[i]["lines"].count
            if howmany==1 {
                if i == 0{
                    
                    LineA = [keyfirst[1]]
                    LineNumberA = [keysecond[1]]
                }
                else{
                    LineA += [keyfirst[1]]
                    LineB += [""]
                    LineNumberA += [keysecond[1]]
                    LineNumberB += [""]
                }
                if LineA[i]=="文湖線" {
                    Line[0] += [LineNumberA[i]]
                    Line2[0] += [""]
                    NewName[0] += [StationNames[i]]
                    howmanyLine[0] += [1]
                }
                else if LineA[i]=="松山新店線" {
                    Line[1] += [LineNumberA[i]]
                    Line2[1] += [""]
                    NewName[1] += [StationNames[i]]
                    howmanyLine[1] += [1]
                }
                else if LineA[i]=="板南線" {
                    Line[2] += [LineNumberA[i]]
                    Line2[2] += [""]
                    NewName[2] += [StationNames[i]]
                    howmanyLine[2] += [1]
                }
                else if LineA[i]=="淡水信義線" {
                    Line[3] += [LineNumberA[i]]
                    Line2[3] += [""]
                    NewName[3] += [StationNames[i]]
                    howmanyLine[3] += [1]
                }
                else if LineA[i]=="中和新蘆線" {
                    Line[4] += [LineNumberA[i]]
                    Line2[4] += [""]
                    NewName[4] += [StationNames[i]]
                    howmanyLine[4] += [1]
                }
                else if LineA[i]=="貓空纜車" {
                    Line[5] += [LineNumberA[i]]
                    Line2[5] += [""]
                    NewName[5] += [StationNames[i]]
                    howmanyLine[5] += [1]
                }
                else if LineA[i]=="新北投支線" {
                    Line[6] += [LineNumberA[i]]
                    Line2[6] += [""]
                    NewName[6] += [StationNames[i]]
                    howmanyLine[6] += [1]
                }
                else if LineA[i]=="小碧潭支線" {
                    Line[7] += [LineNumberA[i]]
                    Line2[7] += [""]
                    NewName[7] += [StationNames[i]]
                    howmanyLine[7] += [1]
                }
                
            }
            else{
                if i == 0{
                    LineA = [keyfirst[1]]
                    LineB = [keyfirst[2]]
                    LineNumberA = [keysecond[1]]
                    LineNumberB = [keysecond[2]]
                }
                else{
                    LineA += [keyfirst[1]]
                    LineB += [keyfirst[2]]
                    LineNumberA += [keysecond[1]]
                    LineNumberB += [keysecond[2]]
                }
                /////////////////////
                if LineA[i]=="文湖線" {
                    Line[0] += [LineNumberA[i]]
                    Line2[0] += [LineNumberB[i]]
                    NewName[0] += [StationNames[i]]
                    howmanyLine[0] += [2]
                }
                else if LineA[i]=="松山新店線" {
                    Line[1] += [LineNumberA[i]]
                    Line2[1] += [LineNumberB[i]]
                    NewName[1] += [StationNames[i]]
                    howmanyLine[1] += [2]
                }
                else if LineA[i]=="板南線" {
                    Line[2] += [LineNumberA[i]]
                    Line2[2] += [LineNumberB[i]]
                    NewName[2] += [StationNames[i]]
                    howmanyLine[2] += [2]
                }
                else if LineA[i]=="淡水信義線" {
                    Line[3] += [LineNumberA[i]]
                    Line2[3] += [LineNumberB[i]]
                    NewName[3] += [StationNames[i]]
                    howmanyLine[3] += [2]
                }
                else if LineA[i]=="中和新蘆線" {
                    Line[4] += [LineNumberA[i]]
                    Line2[4] += [LineNumberB[i]]
                    NewName[4] += [StationNames[i]]
                    howmanyLine[4] += [2]
                }
                else if LineA[i]=="貓空纜車" {
                    Line[5] += [LineNumberA[i]]
                    Line2[5] += [LineNumberB[i]]
                    NewName[5] += [StationNames[i]]
                    howmanyLine[5] += [2]
                }
                else if LineA[i]=="新北投支線" {
                    Line[6] += [LineNumberA[i]]
                    Line2[6] += [LineNumberB[i]]
                    NewName[6] += [StationNames[i]]
                    howmanyLine[6] += [2]
                }
                else if LineA[i]=="小碧潭支線" {
                    Line[7] += [LineNumberA[i]]
                    Line2[7] += [LineNumberB[i]]
                    NewName[7] += [StationNames[i]]
                    howmanyLine[7] += [2]
                }
                
                /////////////////////
                if LineB[i]=="文湖線" {
                    Line[0] += [LineNumberB[i]]
                    Line2[0] += [LineNumberA[i]]
                    NewName[0] += [StationNames[i]]
                    howmanyLine[0] += [2]
                    
                }
                else if LineB[i]=="松山新店線" {
                    Line[1] += [LineNumberB[i]]
                    Line2[1] += [LineNumberA[i]]
                    NewName[1] += [StationNames[i]]
                    howmanyLine[1] += [2]
                }
                else if LineB[i]=="板南線" {
                    Line[2] += [LineNumberB[i]]
                    Line2[2] += [LineNumberA[i]]
                    NewName[2] += [StationNames[i]]
                    howmanyLine[2] += [2]
                }
                else if LineB[i]=="淡水信義線" {
                    Line[3] += [LineNumberB[i]]
                    Line2[3] += [LineNumberA[i]]
                    NewName[3] += [StationNames[i]]
                    howmanyLine[3] += [2]
                }
                else if LineB[i]=="中和新蘆線" {
                    Line[4] += [LineNumberB[i]]
                    Line2[4] += [LineNumberA[i]]
                    NewName[4] += [StationNames[i]]
                    howmanyLine[4] += [2]
                }
                else if LineB[i]=="貓空纜車" {
                    Line[5] += [LineNumberB[i]]
                    Line2[5] += [LineNumberA[i]]
                    NewName[5] += [StationNames[i]]
                    howmanyLine[5] += [2]
                }
                else if LineB[i]=="新北投支線" {
                    Line[6] += [LineNumberB[i]]
                    Line2[6] += [LineNumberA[i]]
                    NewName[6] += [StationNames[i]]
                    howmanyLine[6] += [2]
                }
                else if LineB[i]=="小碧潭支線" {
                    Line[7] += [LineNumberB[i]]
                    Line2[7] += [LineNumberA[i]]
                    NewName[7] += [StationNames[i]]
                    howmanyLine[7] += [2]
                }
                
            }
            //0文湖線
            //1松山新店線
            //2板南線
            //3淡水信義線
            //4中和新蘆線
            //5貓空纜車
            //6新北投支線
            //7小碧潭支線
            
        }// end for
        
        
  
        for i in 0...7{
        Line[i].removeAtIndex(0)
        NewName[i].removeAtIndex(0)
        Line2[i].removeAtIndex(0)
        howmanyLine[i].removeAtIndex(0)
        }
//        print (Line)
//        print(Line2)
//        print(NewName)
//        print(howmanyLine)
//        
        
        
        

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return NewName.count    }
    
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return NewName.count
//    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewName[section].count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        func LabelColor(LineNumber:String) -> UIColor {
            if LineNumber.containsString("BR") {
                return UIColor(red: 158/255, green: 101/255, blue: 46/255, alpha: 1)
            } else if LineNumber.containsString("G") && !LineNumber.containsString("A") && !LineNumber.containsString("M") {
                return UIColor(red: 0/255, green: 119/255, blue: 73/255, alpha: 1)
            } else if LineNumber.containsString("O") {
                return UIColor(red: 255/255, green: 163/255, blue: 0/255, alpha: 1)
            } else if LineNumber.containsString("B") && !LineNumber.containsString("R") {
                return UIColor(red: 0/255, green: 94/255, blue: 184/255, alpha: 1)
            } else if LineNumber.containsString("R") && !LineNumber.containsString("B") && !LineNumber.containsString("A"){
                return UIColor(red: 203/255, green: 44/255, blue: 48/255, alpha: 1)
            } else if LineNumber.containsString("MG") {
                return UIColor(red: 119/255, green: 185/255, blue: 51/255, alpha: 1)
            } else if LineNumber.containsString("G03A") {
                return UIColor(red: 206/255, green: 220/255, blue: 0/255, alpha: 1)
            } else {
                return UIColor(red: 248/255, green: 144/255, blue: 165/255, alpha: 1)
            }
            
        }
        
        
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! StationTableViewCell
        
        cell.StationNameLabel.text = NewName[indexPath.section][indexPath.row]
        cell.StationLineALabel.text = Line[indexPath.section][indexPath.row]
        cell.StationLineALabel.backgroundColor = LabelColor(Line[indexPath.section][indexPath.row] as String)
        cell.StationLineALabel.textColor = UIColor.whiteColor()
        cell.StationLineALabel.layer.cornerRadius = 3
        //CGSize; SationLineALabel.layer = CGSizeMake(97,28 );
               //cell.StationLineALabel.adjustsFontSizeToFitWidth = true;
        
        cell.StationLineBLabel.text = Line2[indexPath.section][indexPath.row]
        cell.StationLineBLabel.backgroundColor = LabelColor(Line2[indexPath.section][indexPath.row] as String)
        cell.StationLineBLabel.textColor = UIColor.whiteColor()
        cell.StationLineBLabel.layer.cornerRadius = 3
        if howmanyLine[indexPath.section][indexPath.row] == 1 {
        //cell.StationLineBLabel.hidden = true
        }
       
        return cell
    }
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return LALA[section]
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showStationDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! StationDetailViewController
                
                
                destinationController.StationName = NewName[indexPath.section][indexPath.row]
                destinationController.howmany = howmanyLine[indexPath.section][indexPath.row]
                destinationController.StationLineAA = Line[indexPath.section][indexPath.row]
                destinationController.StationLineB = Line[indexPath.section][indexPath.row]
                destinationController.StationLineC = Line2[indexPath.section][indexPath.row]
                //destinationController.StationNumber = StationNumbers[indexPath.row]
                
            }
        }
    }
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
