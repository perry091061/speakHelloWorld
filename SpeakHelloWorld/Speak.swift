//
//  Speak.swift
//  SpeakHelloWorld
//
//  Created by Perry Davies on 19/02/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class Speak {
    
    var delegate: ViewController?
    init(pointer:ViewController?) {
        OperationQueue.main.addOperation {
            
            guard let delegate = pointer
                else { return }
            guard let speechText = delegate.textUtterance.text
                else { return }
            let speechSynthesizer   = AVSpeechSynthesizer()
            let speechUtterance     = AVSpeechUtterance(string: speechText)
            speechUtterance.rate    = 0.05
            
            let language            = AVSpeechSynthesisVoice(language: "en-US") // en-GB - Male voice
            speechUtterance.voice   = language
            speechUtterance.rate    = 0.05 // slow /normal = 0.5
            speechSynthesizer.speak(speechUtterance)
        }
        
    }
}
