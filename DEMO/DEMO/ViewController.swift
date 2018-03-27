//
//  ViewController.swift
//  DEMO
//
//  Created by Taillook on 2018/03/27.
//  Copyright © 2018年 Taillook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let rootViewController = AppRootViewController.root
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.red
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
    button.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height / 2)
    button.backgroundColor = UIColor.yellow
    button.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
    view.addSubview(button)
  }
  
  @objc func btnAction() {
    let vc = UIViewController()
    vc.view.backgroundColor = UIColor.blue
    rootViewController.childVC.present(vc, animated: true, completion: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

