//
//  iPhone5TableViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

var iPnone5: NSMutableArray!
class iPhone5TableViewController: UITableViewController {
    
    
    let iPhone5List = ["Intro"]
    let Images = ["IOS6"]

    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return iPhone5List.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.iPhone5.text = iPhone5List[(indexPath as NSIndexPath).row]
        // Configure the cell...

        return cell
    }
    
    @IBAction func Done(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    

       // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "DetailView") {
            
            let VC = segue.destinationViewController as! iPhone5ViewController
            if let indexpath = self.tableView.indexPathForSelectedRow {
                
                let Title = iPhone5List[(indexpath as NSIndexPath).row] as String
                
                VC.SentData = Title
                
                let Image = Images[(indexpath as NSIndexPath).row] as String
                
                VC.SentData2 = Image
                
            }
            
            
            
            
            
        }
   
        
    }
    func loadTitle() {
        if let path = Bundle.main.pathForResource("Property List", ofType: "plist") {
            iPnone5 = NSMutableArray(contentsOfFile: path)
            
        }
    }
    

}
