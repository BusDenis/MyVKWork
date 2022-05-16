//
//  FriendsViewController.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 10.04.2022.
//

import UIKit

struct Friend {
    let name: String
    let avatar: String
    let photos: [String]
    
}

class FriendsViewController: UITableViewController {
    
    let friends: [Friend] = [
        Friend(name: "Джоли", avatar: "Jolie_avatar", photos: ["Jol_foto1", "Jol_foto2", "Jol_foto3"]),
        Friend(name: "Илон", avatar: "Mask_avatar", photos: ["Mask_foto1", "Mask_foto2", "Mask_foto3"]),
        Friend(name: "Алберт", avatar: "Albert_avatar", photos: ["Albert_foto1", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Березина Светлана", avatar: "svetlana", photos: ["svetlana", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Борисенко Зина", avatar: "zina", photos: ["zina", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Волков Андрей", avatar: "volk_andrey", photos: ["volk_andrey", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Ворошилов Илья", avatar: "ilya", photos: ["ilya", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Гребенщиков Александр", avatar: "aleks", photos: ["aleks", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Гарбушин Михаил", avatar: "mihail", photos: ["mihail", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Дубовицкая Тамара", avatar: "tamara", photos: ["tamara", "Albert_foto2", "Albert_foto3"]),
        Friend(name: "Добронравова Галина", avatar: "galina", photos: ["galina", "Albert_foto2", "Albert_foto3"]),
        
        
        
        
        
        
        
        
        
        ]
    
    

        override func viewDidLoad() {
        super.viewDidLoad()

        }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return friends.count
        }
            
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendTableViewCell
                let friend = friends[indexPath.row]
                cell?.avatarimageView.image = UIImage(named: friend.avatar)
                cell?.label.text = friend.name
                return cell ?? UITableViewCell()
            }
            
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                guard let cell = sender as? FriendTableViewCell,
                      let index = tableView.indexPath(for: cell)?.row,
                      let photosVC = segue.destination as? PhotosCollectionViewController else{
                          return
                      }
                
                let friend = friends[index]
                photosVC.friendPhotos = friend.photos
                
                
                
            }

}


