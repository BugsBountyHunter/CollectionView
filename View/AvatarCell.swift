//
//  AvatarCell.swift
//  CollectionView
//
//  Created by Ahmed on 9/20/1439 AH.
//  Copyright © 1439 AH Steph_saber. All rights reserved.
//

import UIKit
enum AvatarType {
    case dark
    case light
}
class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView(){
      
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    func configureImage(index: Int ,type: AvatarType){
        
        if type == AvatarType.dark{
            
            self.layer.backgroundColor = UIColor.lightGray.cgColor
            avatarImageCell.image = UIImage(named: "dark\(index)")
        }else{
            self.layer.backgroundColor = UIColor.gray.cgColor
            avatarImageCell.image = UIImage(named: "light\(index)")
        }
    }
    
    
    
    
}
