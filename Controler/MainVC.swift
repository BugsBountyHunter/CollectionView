//
//  ViewController.swift
//  CollectionView
//
//  Created by Ahmed on 9/19/1439 AH.
//  Copyright © 1439 AH Steph_saber. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var pickImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if SaveImage.instanc.avatarImage != ""{
            pickImage.image = UIImage(named: "\(SaveImage.instanc.avatarImage)")
            
        }
    }
    
    
    
    // viewdidapper
    @IBAction func pikerImgPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR_IMAGE, sender: nil)
    }
    
}

