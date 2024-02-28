//
//  Person.swift
//  ContactList
//
//  Created by Tatiana Lazarenko on 2/27/24.
//

final class ContactList {
    var contactList: [Person] = []
    
    func getContactList(from persons: Persons) -> [Person] {
        persons.names.shuffle()
        
        for name in persons.names {
            let surname = persons.surnames.randomElement() ?? ""
            if let surnameIndex = persons.surnames.firstIndex(of: surname) {
                persons.surnames.remove(at: surnameIndex)
            }
            
            let phoneNumber = persons.telephones.randomElement() ?? ""
            if let phoneIndex = persons.telephones.firstIndex(of: phoneNumber) {
                persons.telephones.remove(at: phoneIndex)
            }
            
            let email = persons.emails.randomElement() ?? ""
            if let emailIndex = persons.emails.firstIndex(of: email) {
                persons.emails.remove(at: emailIndex)
            }
            
            let person = Person(
                name: name,
                surname: surname,
                phoneNumber: phoneNumber,
                email: email
            )
            
            contactList.append(person)
        }
        
        return contactList
    }
}
  
struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
}

