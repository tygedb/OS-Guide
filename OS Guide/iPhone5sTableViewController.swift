//
//  iPhone5sTableViewController.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit
var iPhone5s: NSMutableArray!
class iPhone5sTableViewController: UITableViewController {
    
    let iPhone5sList = ["Intro", "Touch ID"]
    let Images5s = ["TouchID.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
    
    
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
        return iPhone5sList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.iPhone5s.text = iPhone5sList[(indexPath as NSIndexPath).row]
        // Configure the cell...

        return cell
    }
    
    
    @IBAction func Done(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

       // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "DetailView") {
            
            let VC = segue.destination as! iPhone5sViewController
            if let indexPath = self.tableView.indexPathForSelectedRow {
                if let indexpath = self.tableView.indexPathForSelectedRow {
                    
                    let Title = iPhone5sList[(indexpath as NSIndexPath).row] as String
                    
                    VC.SentData5s = Title
                    
                   /* let Image = Images5s[(indexpath as NSIndexPath).row] as String
                    
                    VC.SentData5s2 = Image*/
                    
                }
                
                
                
                
                
            }
            
            
        }
        func loadTitle() {
            if let path = Bundle.main.path(forResource: "Property List", ofType: "plist") {
                iPhone5s = NSMutableArray(contentsOfFile: path)
                
            }
        }
    }

}
