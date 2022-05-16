//
//  Group.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 18.04.2022.
//

import Foundation

enum Category {
    case films
    case classified
    case auto
    case anymal
    
    var categoryTitle: String {
        switch self {
        case .films:
            return "Фильмы"
        case .classified:
            return "Доски объявлений"
        case .auto:
            return "Автомобили"
        case .anymal:
            return "Животные"
        }
    }
    
    var categoryDescription: String {
        switch self {
        case .films:
            return "Самые интересные и захватывающие"
        case .classified:
            return "Покупай, меняй, продавай"
        case .auto:
            return "Запчасти, ремонт, отзывы"
        case .anymal:
            return "Любуйся, Корми, Ухаживай!"
        }
    }
    
    
    
}

struct Group {
    let id: UInt
    let category: Category
    let namegroup: String
    let avatargroup: String
    let groupDescription: String
    let isSubscribe: Bool
    
    static var allGroups: [Group] = [
        Group(id: 1, category: .anymal, namegroup: "Котики", avatargroup: "cat", groupDescription: "Котики захватят мир", isSubscribe: true),
        Group(id: 2, category: .anymal, namegroup: "ПЕС", avatargroup: "dog", groupDescription: "Верный друг", isSubscribe: true),
        Group(id: 3, category: .anymal, namegroup: "Носороги", avatargroup: "rhino", groupDescription: "Носорог, он и в Африке носорог", isSubscribe: true),
        Group(id: 4, category: .films, namegroup: "Фильмы Ретро", avatargroup: "retro", groupDescription: "фильмы которые смотрят", isSubscribe: true),
        Group(id: 5, category: .films, namegroup: "Экшн, Боевики", avatargroup: "ekshn", groupDescription: "шумно и громко", isSubscribe: false),
        Group(id: 6, category: .films, namegroup: "Актеры Кино", avatargroup: "akter", groupDescription: "мы их смотрим", isSubscribe: true),
        Group(id: 7, category: .classified, namegroup: "Купи продай в РнД", avatargroup: "kupi", groupDescription: "ты сможешь", isSubscribe: false),
        Group(id: 8, category: .auto, namegroup: "Запчасти из Европы", avatargroup: "zapauto", groupDescription: "привезем все", isSubscribe: true),
        Group(id: 9, category: .auto, namegroup: "Авто из Японии", avatargroup: "jpan", groupDescription: "самураи в деле", isSubscribe: false),
        Group(id: 10, category: .auto, namegroup: "Ремонт и Сервис", avatargroup: "servis", groupDescription: "привози, сделаем", isSubscribe: true)
        
        
    ]
}
