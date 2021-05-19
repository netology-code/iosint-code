//
//  Copyright © 2021 Netology. All rights reserved.
//

final class BookStorage {
    
    func books() -> [Book] {
        [.init(author: "Василий Усов",
               title: "Swift. Основы разработки приложений под iOS и macOS"),
         .init(author: "Apple",
                title: "The Swift Programming Language"),
         .init(author: "Fahim Farook & Matthijs Hollemans",
                title: "UIKit Apprentice")]
    }
}
