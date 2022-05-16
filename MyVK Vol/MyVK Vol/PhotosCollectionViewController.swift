//
//  PhotosCollectionViewController.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 10.04.2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotosCollectionViewController: UICollectionViewController {
    
    var friendPhotos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     return friendPhotos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoCollectionViewCell
        let friendPhoto = friendPhotos[indexPath.item]
        cell?.imageView.image = UIImage(named: friendPhoto)
        
        return cell ?? UICollectionViewCell()
    }

  

}
