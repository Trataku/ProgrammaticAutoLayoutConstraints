//
//  AutoLabelViewController.swift
//  Programmatic Auto Layout Constraints
//
//  Created by Dylan Mouser on 2/15/19.
//  Copyright © 2019 Dylan Mouser. All rights reserved.
//

import UIKit

class AutoLabelViewController: UIViewController {

    var leading: NSLayoutConstraint?
    var trailing: NSLayoutConstraint?
    var top: NSLayoutConstraint?
    var bottom: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "Hello. You've found me."
        self.view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        leading = NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 10)
        
        trailing = NSLayoutConstraint(item: label, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -10)
        
        top = NSLayoutConstraint(item: label, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 400)
        
        bottom = NSLayoutConstraint(item: label, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -400)
        
        leading?.isActive = true
        trailing?.isActive = true
        top?.isActive = true
        bottom?.isActive = true
    }

}
