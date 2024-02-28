//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Tatiana Lazarenko on 2/27/24.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(personInfo.phoneNumber)"
        emailLabel.text = "Email: \(personInfo.email)"
        
        navigationItem.title = "\(personInfo.name) \(personInfo.surname)"
    }
}

