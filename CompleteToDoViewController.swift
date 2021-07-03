//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by  Scholar on 6/28/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var selectedToDo : ToDoCD?
    var previousVC: UITableViewController?

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo?.name

    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo {
              context.delete(theToDo)
              navigationController?.popViewController(animated: true)
            }
        }
    }
    
  
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var previousVC = ToDoTableViewController()
        var selectedToDo = ToDo()
    }
    

}
