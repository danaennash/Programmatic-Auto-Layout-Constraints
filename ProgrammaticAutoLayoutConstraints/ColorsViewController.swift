//
//  ColorsViewController.swift
//  ProgrammaticAutoLayoutConstraints
//
//  Created by Danae N Nash on 9/9/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var colorTextView: UITextView!
    @IBAction func colorTextFieldChanged(_ sender: Any) {
        if let currentText: String = colorTextField.text?.lowercased() {
            switch currentText {
            case "yellow":
                colorTextView.textColor = UIColor.yellow
            case "orange":
                colorTextView.textColor = UIColor.orange
            case "red":
                colorTextView.textColor = UIColor.red
            case "purple":
                colorTextView.textColor = UIColor.purple
            case "blue":
                colorTextView.textColor = UIColor.blue
            case "green":
                colorTextView.textColor = UIColor.green
            case "white":
                colorTextView.textColor = UIColor.white
            default:
                colorTextView.textColor = UIColor.black
            }
        }
    }
    
    var colorTextFieldLeadingConstraint: NSLayoutConstraint?
    var colorTextFieldTrailingConstraint: NSLayoutConstraint?
    var colorTextFieldTopConstraint: NSLayoutConstraint?

    var colorTextViewTopConstraint: NSLayoutConstraint?
    var colorTextViewLeadingConstraint: NSLayoutConstraint?
    var colorTextViewTrailingConstraint: NSLayoutConstraint?
    var colorTextViewBottomConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorTextView.layer.borderColor = UIColor.gray.cgColor
        colorTextView.layer.cornerRadius = 5
        colorTextView.layer.borderWidth = 0.5
        colorTextView.text = "Some sample text."
        
        colorTextField.placeholder = "Type a color here"
        
        colorTextFieldLeadingConstraint = NSLayoutConstraint(item: colorTextField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 10)
        colorTextFieldTopConstraint = NSLayoutConstraint(item: colorTextField, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 50)
        colorTextFieldTrailingConstraint = NSLayoutConstraint(item: colorTextField, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -10)
        colorTextField.translatesAutoresizingMaskIntoConstraints = false
        
        colorTextViewTopConstraint = NSLayoutConstraint(item: colorTextView, attribute: .top, relatedBy: .equal, toItem: colorTextField, attribute: .bottom, multiplier: 1.0, constant: 20)
        colorTextViewBottomConstraint = NSLayoutConstraint(item: colorTextView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20)
        colorTextViewLeadingConstraint = NSLayoutConstraint(item: colorTextView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 10)
        colorTextViewTrailingConstraint = NSLayoutConstraint(item: colorTextView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -10)
        colorTextView.translatesAutoresizingMaskIntoConstraints = false
        
        colorTextFieldLeadingConstraint?.isActive = true
        colorTextFieldTrailingConstraint?.isActive = true
        colorTextFieldTopConstraint?.isActive = true
        
        colorTextViewLeadingConstraint?.isActive = true
        colorTextViewTrailingConstraint?.isActive = true
        colorTextViewTopConstraint?.isActive = true
        colorTextViewBottomConstraint?.isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
