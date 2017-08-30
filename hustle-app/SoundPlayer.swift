//
//  SoundPlayer.swift
//  hustle-app
//
//  Created by Carlos Vazquez Gomez on 8/29/17.
//  Copyright © 2017 fx. All rights reserved.
//

import Foundation
import AVFoundation

class SoundPlayer: NSObject {
    
    fileprivate var player: AVAudioPlayer!
    override init() {
        super.init()
        setupPlayer()
    }
    
    fileprivate func setupPlayer() {
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError {
            print(error.description)
        }
    }
    
    public func playSound() {
        player.play()
    }
    
    public func stopSound() {
        player.stop()
    }
}
