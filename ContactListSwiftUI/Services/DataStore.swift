//
//  DataStore.swift
//  ContactListSwiftUI
//
//  Created by Armen Madoyan on 22.12.2022.
//

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Bugs",
        "Porki",
        "Daffy",
        "Wile E.",
        "Sylvester",
        "Sam",
        "Elmer",
        "Speedy"
    ].shuffled()
    
    let surnames = [
        "Bunny",
        "Pig",
        "Duck",
        "Coyote",
        "Cat",
        "Yosemite",
        "Fudd",
        "Gonzales"
    ].shuffled()
    
    let phoneNumbers = [
        "11-11-11",
        "11-22-33",
        "33-12-43",
        "51-22-51",
        "54-12-12",
        "55-31-42",
        "42-12-33",
        "44-11-25"
    ].shuffled()
    
    let emails = [
        "bunny@mail.ru",
        "pig@mail.ru",
        "duck@mail.ru",
        "coyote@mail.ru",
        "cat@mail.ru",
        "yosemite@mail.ru",
        "fudd@mail.ru",
        "gonzales@mail.ru"
    ].shuffled()
    
    private init(){}
}
