//
//  maker.swift
//  What's This?
//
//  Created by Tae-hee on 2020-05-11.
//  Copyright © 2020 Tae-hee. All rights reserved.
//

import UIKit

class maker: UIViewController {
    
    //MARK: -Properties
    //MARK: IBOutlets
    @IBOutlet weak var gameTextField: UITextField!
    
    //MARK: - Methods
    //MARK: IBActions
    @IBAction func touchUpInsideDismissButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gameTextField.text = """
        Thank you for using What's This?
        더스틴에게 편지 남길 곳
        """
    }

        // Do any additional setup after loading the view.
    }
    
  
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


