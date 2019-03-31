//
//  ViewController.swift
//  iRoutePlanner
//
//  Created by Brandon Wong on 3/26/19.
//  Copyright © 2019 BMW Fire. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var input: UITextField!
    
    var userInput: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.delegate = self
        configureTapGesture()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        input.resignFirstResponder()
    }
    

    @IBAction func addButton(_ sender: Any) {
        addToArray()
    }
    
    @IBAction func click(_ sender: Any) {
        print("Click Click Mother Fucker")
    }
    
    func addToArray() {
        guard let add = input.text else {return}
        input.text = ""
        userInput.append(add)
        print(userInput)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        addToArray()
        return true
    }
}
