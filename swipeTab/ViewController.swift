//
//  ViewController.swift
//  swipeTab
//
//  Created by Ashish on 26/06/20.
//  Copyright © 2020 Ashish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewMoving: UIView!
    @IBOutlet weak var btnClaimRaised: UIButton!
    @IBOutlet weak var btnSaveDraft: UIButton!
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         handleClaimSaved(btnClaimRaised)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func handleClaimSaved(_ sender: UIButton) {
           sender.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
           switch sender.tag {
               case 0:
                   btnSaveDraft.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5), for: .normal)
//                   removechild(drafts)
                   let storyboard = UIStoryboard(name: "Main", bundle: nil)
                         let controller = storyboard.instantiateViewController(withIdentifier: "ViewControllerFirst") as! ViewControllerFirst
                     addchild(controller, containerView)
                   viewMoving.animate(.identity)
               case 1:
                   btnClaimRaised.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5), for: .normal)
//                   removechild(claims)
                   let storyboard = UIStoryboard(name: "Main", bundle: nil)
                       let controller = storyboard.instantiateViewController(withIdentifier: "ViewControllerSecond") as! ViewControllerSecond
                   addchild(controller, containerView)
                   
                  //addchild(drafts, containerView)
                   viewMoving.animate(.init(translationX: UIScreen.main.bounds.width / 2, y: 0))
               default:
                   break
           }
       }
    
}


extension UIView{
    func animate(_ property: CGAffineTransform){
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseIn, animations: {
            self.transform = property
        }, completion: nil)
    }
}

extension UIViewController{
    func addchild(_ controller: UIViewController, _ containerView: UIView){
        controller.view.frame = containerView.bounds
        containerView.addSubview(controller.view)
        self.addChild(controller)
        controller.didMove(toParent: self)
    }
    func removechild(_ controller: UIViewController){
        controller.willMove(toParent: nil)
        controller.removeFromParent()
        controller.view.removeFromSuperview()
    }
}


