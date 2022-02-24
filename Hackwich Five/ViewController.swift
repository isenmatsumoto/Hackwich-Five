//
//  ViewController.swift
//  Hackwich Five
//
//  Created by Isen Matsumoto on 2/23/22.
//

import UIKit

class ViewController: UIViewController {
//Part 4: Created IBOutlets
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    var currentIndex = 0
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    
    var favoriteFoodsArray = ["Sushi", "Shwarma", "Burritos", "Lumpia", "Curry"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    //Part:5 Set topLabel's text to "My Favortie foods"
        topLabel.text = "My Favorite foods"
        bottomLabel.text = favoriteFoodsArray[currentIndex]
    
    }
    //Part 8:
    @IBAction func buttonPressed(_ sender: Any) {
        if self.currentIndex < favoriteFoodsArray.count
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
            
        }
    else
    {
      printContent("button has been disabled")
                   (buttonLabel!).isEnabled = false
    }
    
    
    }
    
    


}

