//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPersons()
    
    var body: some View {
        
        TabView {
            ContactListView(contactLists: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            AllContactsView(contacts: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Phone numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
