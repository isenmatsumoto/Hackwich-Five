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
        //Line 33 is computing the value of both current index and favoriteFoodsArray, if current index turns out to be less then it will run the if statement and vice versa for the else statement
        if self.currentIndex < favoriteFoodsArray.count
        {
            //Line 36 sets bottomLabel to the five foods of favoriteFoodsArray and pairs it with currentIndex
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            //Line 38 sets the title of the button to "Next" as long as there are more iterations of foods to cycle through
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            //Line 40 increases the currentIndex Int by 1 every time the button is pressed
            currentIndex += 1
            
        }
    else
    {
        //Line 46 displays within the console that the button has been disabled
      printContent("button has been disabled")
        //Line 48 disables the button 
                   (buttonLabel!).isEnabled = false
    }
    
    
    }
    
    


}

