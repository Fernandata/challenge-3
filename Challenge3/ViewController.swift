//
//  ViewController.swift
//  Challenge3
//
//  Created by Luis Fernando Salas Gave on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    @IBOutlet weak var tableView: UITableView!
    
    var info : [Activity] = [
        Activity(title: "clean", description: "wipe floors", priority: "emergency")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //Actions
    
    @IBAction func createActivity(_ sender: Any) {
        let createStotyboard = storyboard?.instantiateViewController(withIdentifier: "AddActivityViewController")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ActivityTableViewCell
        let activity = info[indexPath.row]
        cell.activityLabel.text = activity.title
        return cell
    }


}

