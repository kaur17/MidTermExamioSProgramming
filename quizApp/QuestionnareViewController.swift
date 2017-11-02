//
//  QuestionnareViewController.swift
//  quizApp
//
//  Created by MacStudent on 2017-10-25.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit



class QuestionnareViewController: UIViewController {
    
    
    @IBOutlet weak var lbltimer: UILabel!
    
    @IBOutlet weak var lblquestion: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
    @IBOutlet weak var btnnext: UIButton!

    var countwronganswer: Int = 0
    var countcorrectanswer: Int = 0
    var unattemptedanswer: Int = 0
   
    
    var correctanswer = ""
    var answer = ""
   
    var question: Int = 0
    var count = 0
    var timer : Timer!
    var seconds = 10
    var questionNumber = 0


    override func viewDidLoad() {
        super.viewDidLoad()
       question = Int(arc4random_uniform(6))
        selectQuestion(question: questionNumber)
        //lblresult.text = ""
          //btnnext.isHidden = true
      
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(QuestionnareViewController.updateTimer), userInfo: nil, repeats: true)
    }
    

    @objc func updateTimer()
    {
        seconds -= 1
        lbltimer.text = String(seconds)
        
        if(seconds == 0)
        {
            lbltimer.text = "\(seconds)"
            seconds = 10
            
        }
   }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func answer1tapped(_ sender: UIButton) {
      // btnnext.isHidden = false
//      answer1.isEnabled = true
//        answer2.isEnabled = false
//        answer3.isEnabled = false
//        answer4.isEnabled = false
        answer = (answer1.titleLabel?.text)!
        if(correctanswer == answer1.titleLabel?.text)
        {
            countcorrectanswer = countcorrectanswer + 1
        }
        else

        {
        countwronganswer = countwronganswer + 1
        }
        
    }
    
    @IBAction func answer2tapped(_ sender: UIButton) {
          //btnnext.isHidden = false
//        answer2.isEnabled = true
//        answer1.isEnabled = false
//        answer3.isEnabled = false
//        answer4.isEnabled = false
        answer = (answer2.titleLabel?.text)!
if(correctanswer == answer2.titleLabel?.text)
{
    countcorrectanswer = countcorrectanswer + 1
        
    }
else
{
    countwronganswer = countwronganswer + 1
    
        }
    }
        
    
     @IBAction func answer3tapped(_ sender: UIButton) {
         // btnnext.isHidden = false
        
//        answer3.isEnabled = true
//        answer1.isEnabled = false
//        answer2.isEnabled = false
//        answer4.isEnabled = false
        answer = (answer3.titleLabel?.text)!
        
        if(correctanswer == answer3.titleLabel?.text)
        {
            countcorrectanswer = countcorrectanswer + 1
            
        }
        else {
            countwronganswer = countwronganswer + 1
            
        }
      
        }
        
    
      @IBAction func answer4tapped(_ sender: UIButton) {
        
         // btnnext.isHidden = false
//        answer4.isEnabled = true
//        answer1.isEnabled = false
//        answer3.isEnabled = false
//        answer2.isEnabled = false
        answer = (answer4.titleLabel?.text)!
        if(correctanswer == answer4.titleLabel?.text)
        {
            countcorrectanswer = countcorrectanswer + 1
            
        }
        else {
            countwronganswer = countwronganswer + 1
            
        }
        
    }
    
      @IBAction func btnnextTapped(_ sender: UIButton)
      {
            seconds = 10
            questionNumber = questionNumber + 1
             if (questionNumber == 6)
             {
                print("Show result now")
                 // show result
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let nextScreen = storyboard.instantiateViewController(withIdentifier: "resultViewController") as! resultViewController
                nextScreen.correctanswer = countcorrectanswer
                nextScreen.incorrectanswer = countwronganswer
                nextScreen.unattemptedanswer = self.unattemptedanswer
                self.present(nextScreen, animated: true, completion: nil)
             }
             else
             {
                selectQuestion(question: questionNumber)
             }
           if(answer.isEmpty)
            {
                unattemptedanswer = unattemptedanswer + 1
            }
            else
            {
                print("Correct answer : \(countcorrectanswer)")
                print("Wrong answer : \(countwronganswer)")
                print("Not Attempted : \(unattemptedanswer)")
           }
       
            
    }
    

    @IBAction func btnstartquiz(_ sender: UIButton)
    {
 
        
        
    }
  
    
        
  
    
    func selectQuestion(question : Int)
    {
//        question = Int(arc4random_uniform(5))
    
        
        switch question {
            
            
        case 0:
            
            lblquestion.text = "Swift is primarily used to develop content for ____ devices."
            answer1.setTitle("Apple", for: .normal)
            answer2.setTitle("Linux", for: .normal)
            answer3.setTitle("Microsoft", for: .normal)
            answer4.setTitle("None Of These", for: .normal)
            correctanswer = "Apple"
            
//            count = count + 1
            break
            
        case 1:

            lblquestion.text = "What do you use to control how values are captured in a closure?"
            answer1.setTitle("Boxes", for: .normal)
            answer2.setTitle("PokeBall", for: .normal)
            answer3.setTitle("Tables", for: .normal)
            answer4.setTitle("Capture Lists", for: .normal)
            correctanswer = "Tables"
            
            break
        
        case 2:

            lblquestion.text = "What statement can be used to stop the execution of a loop, if, or switch statement?"
            answer1.setTitle("Stop", for: .normal)
            answer2.setTitle("Break", for: .normal)
            answer3.setTitle("Damper", for: .normal)
            answer4.setTitle("Execute", for: .normal)
            correctanswer = "Break"
// count = count + 1
            break
//
        case 3:

            lblquestion.text = "The most basic of expressions in Swift are called ____ expressions."
            answer1.setTitle("Primary", for: .normal)
            answer2.setTitle("Favorite", for: .normal)
            answer3.setTitle("Main", for: .normal)
            answer4.setTitle("Control", for: .normal)
// count = count + 1
            correctanswer = "Main"
            break
            
        
        case 4:

            lblquestion.text = "In Swift, there are three kinds of statements: simple, compiler control,and ____."
            answer1.setTitle("Tagged", for: .normal)
            answer2.setTitle("Control Flow", for: .normal)
            answer3.setTitle("Primary", for: .normal)
            answer4.setTitle("Soluble", for: .normal)
// count = count + 1
            correctanswer = "Control Flow"
            break
        
        case 5:

            lblquestion.text = "The ____ operator appends to one of two different values depending on the value of a condition."
            answer1.setTitle("Type-Casting", for: .normal)
            answer2.setTitle("Ternary Conditional", for: .normal)
            answer3.setTitle("Decleration", for: .normal)
            answer4.setTitle("Preset", for: .normal)
            correctanswer = "Declaration"
            break
            
            
            //        case 6:
            //
            //            lblquestion.text = "4 - 1"
            //            answer1.setTitle("1", for: .normal)
            //            answer2.setTitle("3", for: .normal)
            //            answer3.setTitle("2", for: .normal)
            //            answer4.setTitle("0", for: .normal)
            //
            //        case 7:
            //
            //            lblquestion.text = "3 - 1"
            //            answer1.setTitle("1", for: .normal)
            //            answer2.setTitle("3", for: .normal)
            //            answer3.setTitle("2", for: .normal)
            //            answer4.setTitle("0", for: .normal)
            //
            //        case 8:
            //
            //            lblquestion.text = "2 + 1"
            //            answer1.setTitle("1", for: .normal)
            //            answer2.setTitle("3", for: .normal)
            //            answer3.setTitle("2", for: .normal)
            //            answer4.setTitle("0", for: .normal)
            //
            //
            //        case 9:
            //
            //            lblquestion.text = "1 + 1"
            //            answer1.setTitle("1", for: .normal)
            //            answer2.setTitle("3", for: .normal)
            //            answer3.setTitle("2", for: .normal)
            //            answer4.setTitle("0", for: .normal)
            
        default:
            break
    
    
        }
    }
    
    
    
    
}

