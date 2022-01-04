//
//  QuoteTableViewController.swift
//  QuickQuotes
//
//  Created by Bornak Paul on 04/01/22.
//

import UIKit

class QuoteTableViewController: UITableViewController {
    
    var quotes = [
        "Tough times never last but tough people do. – Robert H. Schiuller",
        "Problems are not stop signs, they are guidelines. – Robert H. Schiuller",
        "If I’m gonna tell a real story, I’m gonna start with my name. – Kendrick Lamar",
        "If the world was blind how many people would you impress? – Boonaa Mohammed",
        "Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead",
        "The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart. -Helen Keller",
        "Never let the fear of striking out keep you from playing the game. -Babe Ruth",
        "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. -Dr. Seuss",
        "Determine your priorities and focus on them. – Eileen McDargh",
        "Yesterday you said tomorrow. Just do it. – Nike",
        "I have nothing to lose but something to gain. – Eminem ",
        "I could agree with you but then we’d both be wrong. – Harvey Specter",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quotes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = quotes[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedQuote = quotes[indexPath.row]
        performSegue(withIdentifier: "moveToQuoteDetail", sender: selectedQuote)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let quoteViewController = segue.destination as? QuoteDetailViewController{
            if let selectedQuote = sender as? String {
                quoteViewController.quote = selectedQuote
            }
        }
    }
    

}
