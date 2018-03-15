//
//  TwoViewController.swift
//  MadLibs
//
//  Created by john bradley on 3/13/18.
//  Copyright © 2018 john. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    var delegate: passData?
    
    @IBOutlet weak var TBOneOutlet: UITextField!
    @IBOutlet weak var TBTwoOutlet: UITextField!
    @IBOutlet weak var TBThreeOutlet: UITextField!
    @IBOutlet weak var TBFourOutlet: UITextField!
    
    
    var one: String = "One"
    var two: String = ""
    var three: String = ""
    var four: String = ""
    var data:[String]?
    
  /////
    override func viewDidLoad() {
        super.viewDidLoad()
        TBOneOutlet.text = (data![0])
        TBTwoOutlet.text = (data![1])
        TBThreeOutlet.text = (data![2])
        TBFourOutlet.text = (data![3])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
////
    
    
    
    
////
    @IBAction func submitButtonPress(_ sender: UIButton) {
        print("#1")
        self.one = (TBOneOutlet.text)!
        self.two = (TBTwoOutlet.text)!
        self.three = (TBThreeOutlet.text)!
        self.four = (TBFourOutlet.text)!
        let dataOne = [
            self.one,
            self.two,
            self.three,
            self.four
            ]
        delegate?.dataCapture(data: dataOne)
    }
////

    

}
//extension data: passData {
//    func DataFunction(data: String) {
//
//    }
//}
//
//
//
//let text = sender as! String
//let dest = degue.desdtination as!
//

        
        


