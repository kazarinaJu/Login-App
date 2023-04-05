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
            biography: "Я родилась в 1989 г. в городе Первоуральск. В 2011 году с красным дипломом закончила прикладную информатику в УрФУ, параллельно получила бесполезное, юридическое второе высшее. \nУ меня есть муж и 9-летняя кошка шотландка, которую зовут Лилу, как в фильме, потому что она \"само совершенство\" 😀\nБольшую часть моего времени съедает работа. В компанию Кнопка я пришла тестировщиком и доросла до управления командой разработки. С моей помощью мы стали аккредитованной ИТ компанией (до того как это стало мейнстримом) и продолжаем быть резидентами Сколково уже целых 7 лет. Почитайте про нас, мы классные.\nПомимо работы я занимаюсь спортом: хожу в зал, а в дни, когда не хожу — бегаю. Ещё читаю книги. В этом году писалась в челлендж — 30 книг за 2023. Пока мой счёт 9 из 30."
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
