//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Tatiana Lazarenko on 3/3/24.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        
        let contactListVC = viewControllers?.first as? ContactListViewController
        let sectionVC = viewControllers?.last as? SectionTableViewController
        
        contactListVC?.persons = persons
        sectionVC?.persons = persons
    }
}
