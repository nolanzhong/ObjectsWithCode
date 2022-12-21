//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Nolan Zhong on 12/20/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //width and height of phone
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        // frame specifies location and size (placing label in direct center)
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5, width: width * 0.8 - 50/2, height: 50)
        view.addSubview(myLabel)
    }


}

