//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Sean Conrad on 6/3/18.
//  Copyright © 2018 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let reuseId = "HistoryViewCell"
    
    var history = [RPSMatch]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let match = self.history[(indexPath as NSIndexPath).row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId)
        cell?.textLabel?.text = match.p1.defeats(match.p2) ? "Player won" : "Player lost"
        
        return cell!
    }
    
    
    
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    
    @IBAction func dismissHistory(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
