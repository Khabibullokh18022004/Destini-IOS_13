

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel! // Creating storyLabel @IBOutlet that will interact with our code
    @IBOutlet weak var choice1Button: UIButton! // Creating choice1Button Outlet
    @IBOutlet weak var choice2Button: UIButton! // Just outlet
    
    var storyBrain = StoryBrain() // Calling our struct
    
    override func viewDidLoad() { //This is just scenarion when  our phone launching app
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
     
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}































