//
//  PlaySound.swift
//  Developer
//
//  Created by paigeshin on 2021/02/16.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER

var audioPlayer: AVAudioPlayer?

func playSound(fileName: String, fileExtension: String = "mp3") {
    if let path = Bundle.main.path(forResource: fileName, ofType: fileExtension) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}

