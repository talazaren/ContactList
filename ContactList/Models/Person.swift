//
//  Person.swift
//  ContactList
//
//  Created by Tatiana Lazarenko on 2/27/24.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let telephones = dataStore.telephones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let count = min(
            names.count,
            surnames.count,
            telephones.count,
            emails.count
        )
        
        for index in 0..<count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: telephones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

