//
//  GameViewController.swift
//  RainCat
//
//  Created by Marc Vandehey on 8/29/16.
//  Copyright © 2016 Thirteen23. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sceneNode = MenuScene(size: view.frame.size)
        
        if let view = self.view as? SKView {
            view.presentScene(sceneNode)
            view.ignoresSiblingOrder = true
        }
        
        SoundManager.sharedInstance.startPlaying()
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
