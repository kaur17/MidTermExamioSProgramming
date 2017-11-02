//
//  resultViewController.swift
//  quizApp
//
//  Created by Navjot Kaur on 2017-10-31.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var lblincorrect: UILabel!
    @IBOutlet weak var lblcorrect: UILabel!
    
    @IBOutlet weak var lblunattempted: UILabel!
    var correctanswer = 0
    var incorrectanswer = 0
    var unattemptedanswer = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        lblcorrect.text = String(self.correctanswer)
        lblincorrect.text = String(self.incorrectanswer)
        lblunattempted.text = String(self.unattemptedanswer)
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnbacktomain(_ sender: UIButton) {
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
