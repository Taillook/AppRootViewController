//
//  AppRootViewController.swift
//  DEMO
//
//  Created by Taillook on 2018/03/27.
//  Copyright © 2018年 Taillook. All rights reserved.
//

import UIKit

open class AppRootViewController: UIViewController {
  open private(set) var childVC = UIViewController()
  open static let root = AppRootViewController()
  
  open override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(childVC.view)
  }
  
  open func changeVC(newVC: UIViewController) {
    childVC.willMove(toParentViewController: nil)
    childVC.view.removeFromSuperview()
    childVC.removeFromParentViewController()
    dismiss(animated: true, completion: nil)
    addChildViewController(newVC)
    view.addSubview(newVC.view)
    newVC.didMove(toParentViewController: self)
    
    childVC = newVC
  }
}
