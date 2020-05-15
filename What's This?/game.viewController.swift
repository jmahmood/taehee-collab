//
//  game.swift
//  What's This?
//
//  Created by Tae-hee on 2020-05-11.
//  Copyright © 2020 Tae-hee. All rights reserved.
//

import UIKit

class game: UIViewController {

    //MARK: -Properties
    var AnimalInfo: AnimalInfo!
    
    //MARK: IBOutlets
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var sound1: UIButton!
    @IBOutlet weak var sound2: UIButton!
    @IBOutlet weak var sound3: UIButton!
    @IBOutlet weak var sound4: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    //MARK: - Methods
    //MARK: IBActions
    @IBAction func touchUpSubmitButton1(_ sender: UIButton) {
    }
    @IBAction func touchUpSubmitButton2(_ sender: UIButton) {
    }
    @IBAction func touchUpSubmitButton3(_ sender: UIButton) {
    }
    @IBAction func touchUpSubmitButton4(_ sender: UIButton) {
    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
    }

    @IBAction func refresh(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = self.AnimalInfo.name
        self.animalImageView.image = UIImage(named: self.AnimalInfo.imageName)
        //self.nameLabel.text = self.animalInfo.name
        //self.descriptionTextView.text = self.animalInfo.animalDescription
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
