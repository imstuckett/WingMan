//
//  VenueAnnotation.swift
//  Wing Man
//
//  Created by Sam Tuckett on 26/02/2018.
//  Copyright © 2018 Samuel Tuckett. All rights reserved.
//

import UIKit

class AnnotationDetailViewController: UIViewController {
    var annotation:VenueAnnotation!
    
    //Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var venuePhoto: UIImageView!
    @IBOutlet weak var historyText: UITextView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var dealPhoto: UIImageView!
    @IBOutlet weak var goingOne: UIImageView!
    @IBOutlet weak var goingTwo: UIImageView!
    @IBOutlet weak var goingThree: UIImageView!
    @IBOutlet weak var goingFour: UIImageView!
    
    //Done Button
    @IBAction func done(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    //Going Button
    @IBAction func button(){
        ImageView.image = #imageLiteral(resourceName: "myphoto")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = annotation.title
        venuePhoto.image = annotation.venuePhoto
        historyText.text = annotation.historyText
        dealPhoto.image = annotation.dealPhoto
        goingOne.image = annotation.goingOne
        goingTwo.image = annotation.goingTwo
        goingThree.image = annotation.goingThree
        goingFour.image = annotation.goingFour
        
        // Do any additional setup after loading the view.
    }

    

}
