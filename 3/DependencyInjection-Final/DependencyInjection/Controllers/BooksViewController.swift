//
//  Copyright © 2021 Netology. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController {
    
    let storage: BookStorage
    
    var books: [Book] = []
    var sort: Bool = false

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.dataSource = self
        return tableView
    }()
    
    init(storage: BookStorage) {
        self.storage = storage
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = storage.name
        if sort {
            books = books.sorted { lhs, rhs in
                lhs.author < rhs.author
            }
        }
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: String(describing: UITableViewCell.self))
        tableView.tableFooterView = .init()
    }
    
    func update(title: String) {
        self.title = title
    }
}

extension BooksViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Initializer
//        return storage.books().count
        
        // Property
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self),
                                                 for: indexPath)
        
        // Initializer
//        let book = storage.books()[indexPath.row]
        
        // Property
        let book = self.books[indexPath.row]
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = book.author + ". " + book.title
        return cell
    }
}
