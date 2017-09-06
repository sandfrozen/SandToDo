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
    
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    @IBOutlet weak var colorImageView: UIImageView!
    
    @IBOutlet weak var colorsPaletteImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorImageView.layer.cornerRadius = colorImageView.frame.size.width/2
        colorImageView.clipsToBounds = true
        
        colorsPaletteImageView.layer.cornerRadius = colorImageView.frame.size.width/3.5
        colorsPaletteImageView.clipsToBounds = true
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
    
    @IBAction func colorSliderChanged(_ sender: Any) {
        let slider = sender as! UISlider
        let value = CGFloat(slider.value)
        let r: CGFloat
        let g: CGFloat
        let b: CGFloat
        
        switch Int(value) {
        case 1:
            r = 1
            g = 1
            b = abs(CGFloat(Int(value)+1) - value)
        case 2:
            r = abs(CGFloat(Int(value)+1) - value)
            g = 1
            b = 0
        case 3:
            r = 0
            g = 1
            b = value - CGFloat(Int(value))
        case 4:
            r = 0
            g = abs(CGFloat(Int(value)+1) - value)
            b = 1
        case 5:
            r = value - CGFloat(Int(value))
            g = 0
            b = 1
        case 6:
            r = 1
            g = 0
            b = abs(CGFloat(Int(value)+1) - value)
        case 7:
            r = abs(CGFloat(Int(value)+1) - value)
            g = 0
            b = 0
        default:
            r = 0
            b = 0
            g = 0
        }
        
        colorImageView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        
        //UIView.animate(withDuration: 1.0, animations: {
        //    self.colorView.backgroundColor = UIColor(white: 1, alpha: 0)
        //})
    }

}
