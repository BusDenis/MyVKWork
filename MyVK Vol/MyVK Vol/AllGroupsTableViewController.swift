//
//  AllGroupsTableViewController.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 18.04.2022.
//

import UIKit

protocol AllGroupsTableViewControllerDelegate {
    func userUnsubscribe(group: Group)
    func userSubscribe(group: Group)
    
}



class AllGroupsTableViewController: UITableViewController {

   
    
    let allGroups = Group.allGroups
    var myGroups: [Group] = []
    
    var delegate: AllGroupsTableViewControllerDelegate?
    
    
    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroups.count
    }
    
    
        
        
        
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupCell", for: indexPath) as? AllGroupTableViewCell
        let group = allGroups[indexPath.row]
        cell?.avatarimageAllGroup.image = UIImage(named: group.avatargroup)
        cell?.labelAllGroup.text = group.namegroup
        cell?.labelCommentAllGroup.text = group.groupDescription
        return cell ?? UITableViewCell()
    }
    
    
    
    
    

    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
       
        let group = allGroups[indexPath.row]
        let isSubcribe = myGroups.contains { myGroups in
            return myGroups.id == group.id
        }
        
        let action: UIContextualAction
        if isSubcribe {
            
            action = UIContextualAction(style: .normal, title: "Отписаться", handler: { [weak self] _, _, complete in
                guard let self = self else { return }
                
                self.myGroups.removeAll(where: { $0.id == group.id })
                self.delegate?.userUnsubscribe(group: group)
                complete(true)
                
            })
            
        } else {
            
            action = UIContextualAction(style: .normal, title: "Подписаться", handler: { [weak self] _, _, complete in
                guard let self = self else { return }
                
                self.myGroups.append(group)
                self.delegate?.userSubscribe(group: group)
                complete(true)
                
            })
        }
        
        
        return UISwipeActionsConfiguration(actions: [action])
        
    }

}
