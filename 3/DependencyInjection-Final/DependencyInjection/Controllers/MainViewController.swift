//
//  MainViewController.swift
//  DependencyInjection
//
//  Created by Artem Novichkov on 19.05.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var booksService: BooksService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        booksService = AppBooksService()
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: String(describing: UITableViewCell.self))
        tableView.tableFooterView = .init()
    }
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        booksService.storages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self),
                                                 for: indexPath)
        let storage = booksService.storages[indexPath.row]
        cell.textLabel?.text = storage.name
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storage = booksService.storages[indexPath.row]
        
        // Initializer
        let vc = BooksViewController(storage: storage)
        
        // Property
        vc.title = storage.name
        vc.books = storage.books()
        vc.sort = true
        
        // Function
        vc.update(title: storage.name)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
