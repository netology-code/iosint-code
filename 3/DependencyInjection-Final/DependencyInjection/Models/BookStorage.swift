//
//  Copyright © 2021 Netology. All rights reserved.
//

protocol BookStorage {
    
    var name: String { get }
    func books() -> [Book]
}

final class SwiftBookStorage: BookStorage {
    
    let name: String = "Swift"
    
    func books() -> [Book] {
        [.init(author: "Fahim Farook & Matthijs Hollemans",
               title: "UIKit Apprentice"),
         .init(author: "Apple",
               title: "The Swift Programming Language"),
         .init(author: "Василий Усов",
               title: "Swift. Основы разработки приложений под iOS и macOS")]
    }
}

final class MifBookStorage: BookStorage {
    
    let name: String = "МИФ"
    
    func books() -> [Book] {
        [.init(author: "Малкольм Гладуэлл",
               title: "Гении и аутсайдеры"),
         .init(author: "Максим Дорофеев",
               title: "Джедайские техники")]
    }
}
