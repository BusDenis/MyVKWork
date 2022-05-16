//
//  MyGroupsTableViewController.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 18.04.2022.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {
    
    var myGroups: [Group] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let firstGroup = Group.allGroups.first {
            myGroups.append(firstGroup)
        }

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }
    
   
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as? MyGroupTableViewCell
        let group = myGroups[indexPath.row]
        cell?.avatarimageMyGroup.image = UIImage(named: group.avatargroup)
        cell?.labelMyGroup.text = group.namegroup
        cell?.labelCommentMyGroup.text = group.groupDescription
        return cell ?? UITableViewCell()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let allGroupsVC = segue.destination as? AllGroupsTableViewController {
            allGroupsVC.myGroups = myGroups
            allGroupsVC.delegate = self
        }
    }

}

extension MyGroupsTableViewController: AllGroupsTableViewControllerDelegate {
    func userSubscribe(group: Group) {
        myGroups.append(group)
        tableView.reloadData()
    }
    
    func userUnsubscribe(group: Group) {
        myGroups.removeAll(where: { $0.id == group.id })
        tableView.reloadData()
        
    }
}



