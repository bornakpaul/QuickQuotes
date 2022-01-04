//
//  QuoteDetailViewController.swift
//  QuickQuotes
//
//  Created by Bornak Paul on 04/01/22.
//

import UIKit

class QuoteDetailViewController: UIViewController {
    var quote = ""

    @IBOutlet weak var quoteLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        quoteLabel.text = quote
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
