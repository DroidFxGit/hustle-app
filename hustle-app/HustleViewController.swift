//
//  HustleViewController.swift
//  hustle-app
//
//  Created by Carlos Vazquez Gomez on 8/29/17.
//  Copyright © 2017 fx. All rights reserved.
//

import UIKit

class HustleViewController: UIViewController {
    
    @IBOutlet weak var cloudHolder: UIImageView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    var player: SoundPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        player = SoundPlayer()
        animateRocket()
    }
    
    func animateRocket() {
        
        UIView.animate(withDuration: 3.0, animations: {
            self.player.playSound()
            self.rocket.frame = CGRect(x: 0, y: 20, width: 375, height: 520)
        }) { (finished) in
            self.hustleLabel.isHidden = false
            self.statusLabel.isHidden = false
        }
    }
}
