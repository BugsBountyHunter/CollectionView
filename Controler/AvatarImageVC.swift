//
//  AvatarImageVC.swift
//  CollectionView
//
//  Created by Ahmed on 9/20/1439 AH.
//  Copyright © 1439 AH Steph_saber. All rights reserved.
//

import UIKit

class AvatarImageVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
   //outlet
    @IBOutlet weak var segmentChanged: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    // var
    
    var avatarType = AvatarType.dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "toAvatarCell", for: indexPath) as? AvatarCell {
            
            cell.configureImage(index: indexPath.item, type: avatarType)
            
            return cell
        }
        return AvatarCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var numberOfColumn:CGFloat = 3
        if UIScreen.main.bounds.width > 320 {
            numberOfColumn = 4
        }
        let padding:CGFloat = 40
        let spaceBetweenCells:CGFloat = 10
        
        let cellDimention : CGFloat = ((collectionView.bounds.width - padding) - (numberOfColumn - 1 ) * spaceBetweenCells)/numberOfColumn
        return CGSize(width: cellDimention, height: cellDimention)
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //
        if avatarType == .dark {
            SaveImage.instanc.setAvatarImage(avatarImage: "dark\(indexPath.item)")
        }else{
            SaveImage.instanc.setAvatarImage(avatarImage: "light\(indexPath.item)")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func segmentChangedPressed(_ sender: Any) {
        if segmentChanged.selectedSegmentIndex == 0 {
            avatarType = .dark
        }else{
            avatarType = .light
        }
        collectionView.reloadData()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
