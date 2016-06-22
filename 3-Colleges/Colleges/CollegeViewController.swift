//
//  CollegeViewController.swift
//  Colleges
//
//  Created by Forrest Filler on 6/22/16.
//  Copyright © 2016 Velocity 360. All rights reserved.
//

import UIKit
import Alamofire

class CollegeViewController: UIViewController {
    
    var college: College!
    
    override func loadView() {
        let frame = UIScreen.mainScreen().bounds
        let view = UIView(frame: frame)
        view.backgroundColor = .redColor()
        
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("COLLEGE: \(self.college.name)")
        

        let url = "https://colleges-api.herokuapp.com/api/college" + college.id
        
        Alamofire.request(.GET, url, parameters: nil).responseJSON { response in
            
            if let json = response.result.value as? Dictionary<String, AnyObject>{
                print("\(json)")
            }
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
