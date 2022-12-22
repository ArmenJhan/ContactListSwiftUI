//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

struct Person {
    let name: String
    let surname: String
    let emaail: String
    let phoneNumber: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let emails = DataStore.shared.emails
        let phoneNumbers = DataStore.shared.phoneNumbers
        
        let iteration = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iteration {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                emaail: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
