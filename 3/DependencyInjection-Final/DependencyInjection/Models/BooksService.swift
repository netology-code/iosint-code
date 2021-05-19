//
//  Copyright © 2021 Netology. All rights reserved.
//

protocol BooksService {
    
    var storages: [BookStorage] { get }
}

final class AppBooksService: BooksService {
    
    let storages: [BookStorage] = [SwiftBookStorage(), MifBookStorage()]
}
