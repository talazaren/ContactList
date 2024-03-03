//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Tatiana Lazarenko on 2/27/24.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var contactList = ContactList().getContactList(from: DataStore())
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        personDetailsVC?.personInfo = contactList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content
        return cell
    }
}
