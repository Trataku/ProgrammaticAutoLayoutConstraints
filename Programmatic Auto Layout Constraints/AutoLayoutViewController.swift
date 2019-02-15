//
//  AutoLayoutViewController.swift
//  Programmatic Auto Layout Constraints
//
//  Created by Dylan Mouser on 2/15/19.
//  Copyright © 2019 Dylan Mouser. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {

    var leading: NSLayoutConstraint?
    var trailing: NSLayoutConstraint?
    var top: NSLayoutConstraint?
    var bottom: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton()
        button.frame = CGRect(x: self.view.frame.size.width - 60, y: 60, width: 50, height: 50)
        button.backgroundColor = UIColor.red
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        leading = NSLayoutConstraint(item: button, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 150)
        
        trailing = NSLayoutConstraint(item: button, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -150)
        
        top = NSLayoutConstraint(item: button, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 400)
        
        bottom = NSLayoutConstraint(item: button, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -400)
        
        leading?.isActive = true
        trailing?.isActive = true
        top?.isActive = true
        bottom?.isActive = true
    }

    @objc func buttonAction(sender: UIButton!) {
        self.performSegue(withIdentifier: "segueToLabel", sender: self)
    }
}
