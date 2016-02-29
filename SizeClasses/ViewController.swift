//
//  ViewController.swift
//  SizeClasses
//
//  Created by Guanshan Liu on 2/24/16.
//  Copyright © 2016 Guanshan Liu. All rights reserved.
//

import UIKit

extension UIUserInterfaceSizeClass {
    func descriptionName() -> String {
        switch self {
        case .Compact:
            return "Compact"
        case .Regular:
            return "Regular"
        case .Unspecified:
            return "Unspecified"
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateLabel() {
        label.text = "H: \(traitCollection.horizontalSizeClass.descriptionName())\nV: \(traitCollection.verticalSizeClass.descriptionName())"
    }
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        updateLabel()
        print(#function)
    }
    
    override func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        print(#function)
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        print(#function)
    }

}

