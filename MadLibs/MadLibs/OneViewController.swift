//
//  ViewController.swift
//  MadLibs
//
//  Created by john bradley on 3/13/18.
//  Copyright © 2018 john. All rights reserved.
//

import UIKit

class ViewController: UIViewController, passData {
    @IBOutlet weak var sentenceOutlet: UILabel!
    
    var madLib: [String] = ["I ____ in my buggy to the _____ and ____ on the Ferris Wheel while I ate my ____"]
    var words: [String] = ["Verb", "Noun", "Adjective", "Noun"]
    
    var delegate: sendMadLibProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sentenceOutlet.text = madLib[0]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Send Data")
        if let destination = segue.destination as? TwoViewController {
            destination.delegate = self
            destination.data = self.words
        }
    }
    
    override func didReceiveMemoryWarning() {
        print("#2")
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        
    }
    func dataCapture(data: [String]) {
        print("DATA: ", data)
        sentenceOutlet.text = "I \(data[0]) in my buggy to the \(data[1]) and \(data[2]) on the Ferris Wheel while I ate my \(data[3])"
    }

}

