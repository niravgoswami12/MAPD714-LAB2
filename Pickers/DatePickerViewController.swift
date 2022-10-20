//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Nirav Goswami on 2022-10-20.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        let date = datePicker.date
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(
            title: "Date and Time Selected",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "That's so true!",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    

}
