//
//  MainTableViewController.swift
//  Stretch My Header
//
//  Created by Will Chew on 2018-07-17.
//  Copyright © 2018 Will Chew. All rights reserved.
//

import UIKit

struct NewsItem {
    var category: String
    var headline: String
}


class MainTableViewController: UITableViewController {
    
    
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
   
    
    var news = [NewsItem]()

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        news.append(NewsItem(category: "World", headline: "Climate change protests, divestments meet fossil fuels realities"))
        news.append(NewsItem(category: "Europe", headline: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"))
        news.append(NewsItem(category: "Middle East", headline: "Airstrikes boost Islamic State, FBI director warns more hostages possible"))
       news.append(NewsItem(category: "Africa", headline: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"))
       news.append(NewsItem(category: "Asia Pacific", headline: "Despite UN ruling, Japan seeks backing for whale hunting"))
        news.append(NewsItem(category: "Americas", headline: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"))
         news.append(NewsItem(category: "World", headline: "South Africa in $40 billion deal for Russian nuclear reactors"))
         news.append(NewsItem(category: "Europe", headline: "'One million babies' created by EU student exchanges"))
        
//        news.append(newsItem1, newsItem2, newsItem3, newsItem4, newsItem5, newsItem6, newsItem7, newsItem8)
        
        
        
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return news.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        cell.categoryLabel.text = news[indexPath.row].category
        cell.headlineLabel.text = news[indexPath.row].headline
        
        switch cell.categoryLabel.text {
        case "World":
             cell.categoryLabel.textColor = .red
        case "Americas":
            cell.categoryLabel.textColor = .blue
        case "Europe":
            cell.categoryLabel.textColor = .green
        case "Middle East":
            cell.categoryLabel.textColor = .yellow
        case "Asia Pacific":
            cell.categoryLabel.textColor = .purple
        case "Africa":
            cell.categoryLabel.textColor = .orange
        default:
            break
        }
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
