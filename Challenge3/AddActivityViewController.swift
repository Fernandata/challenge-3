//
//  AddActivityViewController.swift
//  Challenge3
//
//  Created by Luis Fernando Salas Gave on 5/12/22.
//

import UIKit

//Delegate pattern
protocol AddActivityViewControllerDelegate {
    func showInfo(_ viewController: AddActivityViewController, createNewActivity newActivity: Activity)
}


class AddActivityViewController: UIViewController {

    //Outlets
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var priorityText: UITextField!
    
    //Delegate pattern
    var delegate: AddActivityViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Actions
    @IBAction func saveActivity(_ sender: Any) {
        let newTitle = titleText.text!
        let newDescription = descriptionText.text!
        let newPriority = priorityText.text!
        let newActivity = Activity(title: newTitle, description: newDescription, priority: newPriority)
        //delegate pattern
        delegate!.showInfo(self, createNewActivity: newActivity)
        //go back to previous scene
        dismiss(animated: true)
    }
    
    
}
