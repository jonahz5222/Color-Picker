//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Jonah Zukosky on 7/11/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    //let colors = ["red","orange","yellow","green","blue","purple","brown"]
    let colors = [Color(stringColor: "red",colorColor: UIColor.red),Color(stringColor: "orange",colorColor: UIColor.orange),Color(stringColor: "yellow",colorColor: UIColor.yellow),Color(stringColor: "green",colorColor: UIColor.green),Color(stringColor: "blue",colorColor: UIColor.blue),Color(stringColor: "purple",colorColor: UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colors[colorPicker.selectedRow(inComponent: 0)].colorColor
        colorLabel.text = colors[colorPicker.selectedRow(inComponent: 0)].stringColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].stringColor
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.backgroundColor = colors[row].colorColor
        colorLabel.text = colors[row].stringColor
    }
}
