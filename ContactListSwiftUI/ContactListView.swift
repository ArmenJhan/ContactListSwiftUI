//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let contactLists: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactLists) { contact in
                NavigationLink(destination: ContactProfileView(contact: contact)) {
                    Text("\(contact.fullname) ")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactLists: Person.getPersons())
    }
}
