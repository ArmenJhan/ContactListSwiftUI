//
//  ContactProfileView.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

import SwiftUI

struct ContactProfileView: View {
    
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.text.rectangle")
                    .resizable()
                    .frame(width: 200, height: 150)
                Spacer()
            }
            Label(contact.phoneNumber, systemImage: "iphone")
            Label(contact.email,systemImage: "mail")
        }
        .navigationTitle(contact.fullname)
    }
}

struct ContactProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContactProfileView(contact: Person.getPersons().first!)
    }
}
