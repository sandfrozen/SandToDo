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
        let value = slider.value
        let r: CGFloat
        let g: CGFloat
        let b: CGFloat
        
        switch value {
        case 100000...130000:
            r = CGFloat(Int(value / 10000)) / 100
            g = CGFloat(Int(value / 100) - Int(r * 10000)) / 100
            b = CGFloat(Int(value) - Int(value / 100) * 100) / 100
        case 130001...160000:
            g = CGFloat(Int(value / 10000)) / 100
            b = CGFloat(Int(value / 100) - Int(g * 10000)) / 100
            r = CGFloat(Int(value) - Int(value / 100) * 100) / 100
        default:
            b = CGFloat(Int(value / 10000)) / 100
            r = CGFloat(Int(value / 100) - Int(b * 10000)) / 100
            g = CGFloat(Int(value) - Int(value / 100) * 100) / 100
        }
        //print(value)
        //print("\(r) \(g) \(b)")
        backgroundColorSlider.thumbTintColor = UIColor(red: r, green: g, blue: b, alpha: 0.3)
        //view.backgroundColor = UIColor(red: r, green: 100, blue: 100, alpha: 0.5)
    }

}
