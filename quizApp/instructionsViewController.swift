//
//  instructionsViewController.swift
//  quizApp
//
//  Created by MacStudent on 2017-10-24.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class instructionsViewController: UIViewController {

    @IBOutlet weak var webviewinstructions: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let localfilePath = Bundle.main.url(forResource: "instructionstoquiz", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        webviewinstructions.loadRequest(myRequest);
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
