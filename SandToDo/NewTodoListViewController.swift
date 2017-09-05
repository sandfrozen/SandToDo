//
//  NewTodoListViewController.swift
//  SandToDo
//
//  Created by Tomek Buslowski on 04.09.2017.
//  Copyright © 2017 Tomek Buslowski. All rights reserved.
//

import UIKit

class NewTodoListViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var backgroundColorSlider: UISlider!
    
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func sliderChanged(_ sender: Any) {
        let slider = sender as! UISlider
        let value = CGFloat(slider.value)
        let r: CGFloat
        let g: CGFloat
        let b: CGFloat
        
        switch Int(value) {
        case 1:
            r = 0
            g = 1
            b = value - CGFloat(Int(value))
        case 2:
            r = 0
            g = abs(CGFloat(Int(value)+1) - value)
            b = 1
        case 3:
            r = 0
            g = 0
            b = abs(CGFloat(Int(value)+1) - value)
        case 4:
            r = value - CGFloat(Int(value))
            g = 0
            b = 0
        case 5:
            r = 1
            g = value - CGFloat(Int(value))
            b = 0
        case 6:
            r = 1
            g = 1
            b = value - CGFloat(Int(value))
        case 7:
            r = 1
            g = abs(CGFloat(Int(value)+1) - value)
            b = 1
        default:
            r = 1
            g = 0
            b = 1
        }
        
        //print(Int(value))
        //print("\(r) \(g) \(b)")
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        //view.backgroundColor = UIColor(red: r, green: 100, blue: 100, alpha: 0.5)
    }

}
