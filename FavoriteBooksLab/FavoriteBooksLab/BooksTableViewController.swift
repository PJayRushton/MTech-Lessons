//
//  ViewController.swift
//  FavoriteBooksLab
//
//  Created by Parker Rushton on 6/1/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit


// MARK: - Book Delegate

protocol BookDelegate {
    func newBookAdded(book: Book)
    func bookUpdated(book: Book)
}


class BooksTableViewController: UITableViewController {

    // MARK: - Properties
    
    var books = [Book]()
    
    
    // MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? BookDetailViewController else { return }
        detailViewController.delegate = self
        
        if segue.identifier == "editBook", let selectedIndexPath = tableView.indexPathForSelectedRow {
            let selectedBook = books[selectedIndexPath.row]
            detailViewController.editingBook = selectedBook
        }
    }
    
}


// MARK: - Book Delegate

extension BooksTableViewController: BookDelegate {
    
    func newBookAdded(book: Book) {
        books.append(book)
        tableView.reloadData()
    }
    
    func bookUpdated(book: Book) {
        if let existingBookIndex = books.firstIndex(of: book) {
            books.remove(at: existingBookIndex)
            books.insert(book, at: existingBookIndex)
        }
        tableView.reloadData()
    }

}


// MARK: - TableView DataSource

extension BooksTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        
        cell.textLabel?.text = books[indexPath.row].title
        cell.detailTextLabel?.text = books[indexPath.row].author
        return cell
    }
    
}
