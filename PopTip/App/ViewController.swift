//
//  ViewController.swift
//  PopTip
//
//  Created by Arvin Quiliza on 5/25/19.
//  Copyright © 2019 arvinq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showToolTip()
    }

    @IBAction func showPopup(_ sender: UIView) {
        // Another way to trigger the tooltip
        let controller = PopTip()
        controller.showToolTip(onItem: sender)
        self.present(controller, animated: true)
        
    }
    
    func showToolTip() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            guard let strongSelf = self else { return }
            // do PopTip here
            let controller = PopTip()
            controller.showToolTip(onItem: strongSelf.button)
            strongSelf.present(controller, animated: true)
        }
    }
    
    
}
