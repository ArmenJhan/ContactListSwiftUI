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
        VStack(spacing: 10) {
            Image(systemName: "person.text.rectangle.fill")
                .resizable()
                .frame(width: 200, height: 150)
            HStack {
                Image(systemName: "phone")
                Text("\(contact.phoneNumber)")
                Spacer()
            }
            HStack{
                Image(systemName: "tray")
                Text("\(contact.email)")
                Spacer()
            }
            .navigationTitle("\(contact.fullname)")
            Spacer()
        }
        .padding()
    }
}

struct ContactProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContactProfileView(contact: Person.getPerson())
    }
}
