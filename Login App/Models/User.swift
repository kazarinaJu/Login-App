//
//  User.swift
//  Login App
//
//  Created by Юлия Ястребова on 04.04.2023.
//

struct User {
    let userName: String
    let userPassword: String
    let person: Person
    
    static func getUser() -> User {
        let person = Person(
            name: "Julia",
            surname: "Kazarina",
            city: "Ekaterinburg",
            companyName: "Knopka",
            jobTitle: "Project manager",
            biography: " "
        )
        let user = User(userName: "Alexey", userPassword: "1111", person: person)
        return user
    }
}

struct Person {
    let name: String
    let surname: String
    let city: String
    let companyName: String
    let jobTitle: String
    let biography: String
}
