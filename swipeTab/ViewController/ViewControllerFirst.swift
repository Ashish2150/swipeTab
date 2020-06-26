//
//  ViewControllerFirst.swift
//  swipeTab
//
//  Created by Ashish on 26/06/20.
//  Copyright © 2020 Ashish. All rights reserved.
//

import UIKit

class ViewControllerFirst: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabAction(_ sender: Any) {
        
        switch self.currentAnimation {
            
        case 0:
            self.lblText.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.currentAnimation = 1
            
        case 1:
             self.lblText.transform = .identity
            self.currentAnimation = 2
    
        case 2:
            self.lblText.transform = CGAffineTransform(translationX: 70, y: 5)
            self.currentAnimation = 3
            
        case 3:
            self.lblText.transform = .identity
            self.currentAnimation = 0
        
        default:
            break;
        }
        
        
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
