//
//  Copyright © 2021 Netology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let storage = BookStorage()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: String(describing: UITableViewCell.self))
        tableView.tableFooterView = .init()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        storage.books().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self),
                                                 for: indexPath)
        let book = storage.books()[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = book.author + ". " + book.title
        return cell
    }
}
