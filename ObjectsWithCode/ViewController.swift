//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Nolan Zhong on 12/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    // created this variable in class so can be accessible in function
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //width and height of phone
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        // frame specifies location and size (placing label in direct center)
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5, width: width * 0.8 - 50/2, height: 50)
        view.addSubview(myLabel)
        
        //creating button
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.cyan, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width*0.5 - 100, y: height*0.6, width: 200, height: 200)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside) // means do action if touching the button
    }
    // creating an objective c function for selctor
    @objc func myAction() {
        myLabel.text = "Tapped"
    }

}

