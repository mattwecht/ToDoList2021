//
//  ToDoTableViewController.swift
//  ToDoList2021
//
//  Created by Matthew Wecht on 5/13/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []//empty array of our custom class
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()//sets array equal to the results of that function
    }
    
    func createToDos() -> [ToDo] {//this creates the ToDos that are seen initially

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true
      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1//NOTE: NOT IN LESSON BUT THIS MUST BE CHANGED TO 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]
      if toDo.important {
        cell.textLabel?.text = "❗️" + toDo.name
      } else {
        cell.textLabel?.text = toDo.name
      }

      return cell
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
