//
//  NewTodoListViewController.swift
//  SandToDo
//
//  Created by Tomek Buslowski on 04.09.2017.
//  Copyright © 2017 Tomek Buslowski. All rights reserved.
//

import UIKit

class NewTodoListViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            saveBarButton?.isEnabled = true
        }
    }
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
        let ratio = 2 * value
        let b = max(0, 255*(1 - ratio))
        let r = max(0, 255*(ratio - 1))
        let g = 255 - b - r
        
        let color = UIColor.init(colorLiteralRed: r, green: g, blue: b, alpha: 0.8)
        view.backgroundColor = color
    }

}
