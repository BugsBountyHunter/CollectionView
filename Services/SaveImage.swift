//
//  SaveImage.swift
//  CollectionView
//
//  Created by Ahmed on 9/20/1439 AH.
//  Copyright © 1439 AH Steph_saber. All rights reserved.
//

import Foundation
class SaveImage{
    
    static let instanc = SaveImage()
    
    public private(set) var avatarImage:String = ""

    
    func setAvatarImage(avatarImage: String){
        
        self.avatarImage = avatarImage
        
    }
}
