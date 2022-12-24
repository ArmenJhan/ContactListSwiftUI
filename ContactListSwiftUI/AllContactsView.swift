//
//  AllContactsView.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

import SwiftUI

struct AllContactsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullname)){
                    HStack {
                        Image(systemName: "phone")
                        Text(contact.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "tray")
                        Text(contact.email)
                    }
                }
            }
        }
    }
}

struct AllContactsView_Previews: PreviewProvider {
    static var previews: some View {
        AllContactsView(contacts: Person.getPersons())
    }
}
