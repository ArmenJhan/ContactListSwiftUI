//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        
        let id = DataStore.shared.id
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let emails = DataStore.shared.emails
        let phoneNumbers = DataStore.shared.phoneNumbers
        
        let person = Person(
            id: id[Int.random(in: 0..<id.count)],
            name: names[Int.random(in: 0..<names.count)],
            surname: surnames[Int.random(in: 0..<surnames.count)],
            email: emails[Int.random(in: 0..<emails.count)],
            phoneNumber: phoneNumbers[Int.random(in: 0..<phoneNumbers.count)]
        )
         return person
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let id = DataStore.shared.id
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
                id: id[index],
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
