//
//  game.swift
//  What's This?
//
//  Created by Tae-hee on 2020-05-11.
//  Copyright © 2020 Tae-hee. All rights reserved.
//

import UIKit
import AVFoundation
import os.log

class game: UIViewController {

    //MARK: -Properties
    //MARK: -반려동물(야곰)
    //MARK: IBOutlets
    var AnimalInfo: AnimalInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = self.AnimalInfo.name
        self.animalImageView.image = UIImage(named: self.AnimalInfo.imageName)
    }
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func refresh(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: -PlaySound
    //MARK: -실로폰(안젤라)
    var player: AVAudioPlayer!
   
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
            sender.alpha = 0.5
            
            //Code should execute after 0.2 second delay.
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                //Bring's sender's opacity back up to fully opaque.
                sender.alpha = 1.0
            }
        
    }
    func playSound(soundName: String) {
        
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
            else {return}
        
        player = try? AVAudioPlayer(contentsOf: url)
        player.play()
        
    }
    
    //MARK: - Methods
    //MARK: IBActions
    //남은 문제: 코드를 어떻게 작성해야하는지 모름
    @IBAction func touchUpSubmitButton(_ sender: UIButton) {

        if let userAnswer = sender.titleLabel?.text {

            if userAnswer.lowercased() == AnimalInfo.imageName {
                       self.resultLabel.text = "RIGHT!"
            } else {
                       self.resultLabel.text = "WRONG!"
           }
       }
    }
    
}

