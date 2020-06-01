//
//  BookDetailViewController.swift
//  FavoriteBooksLab
//
//  Created by Parker Rushton on 6/1/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var pagesTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    // MARK: - Properties
    
    var delegate: BookDelegate?
    var editingBook: Book?
    
    
    // MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let editingBook = editingBook {
            fillInEditingBookData(editingBook)
        }
    }

    
    // MARK: - Actions
    
    @IBAction func savePressed() {
        if let _ = editingBook {
            updateBook()
        } else {
            saveNewBook()
        }
    }
    
}


// MARK: - Private

private extension BookDetailViewController {
    
    func saveNewBook() {
        guard let book = newBook() else { return }
        delegate?.newBookAdded(book: book)
        navigationController?.popViewController(animated: true)
    }
    
    func updateBook() {
        guard let updatedBook = self.updatedBook() else { return }
        delegate?.bookUpdated(book: updatedBook)
        navigationController?.popViewController(animated: true)
    }
    
    func newBook() -> Book? {
        guard let title = titleTextField.text,
            let author = authorTextField.text,
            let genre = genreTextField.text,
            let pagesString = pagesTextField.text,
            let numberOfPages = Int(pagesString)
            else { return nil }
        
        let book = Book(id: UUID().uuidString, author: author, genre: genre, numberOfPages: numberOfPages, title: title)
        return book
    }
    
    func updatedBook() -> Book? {
        guard var updatedBook = editingBook else { return nil }
        updatedBook.title = titleTextField.text ?? ""
        updatedBook.author = authorTextField.text ?? ""
        updatedBook.genre = genreTextField.text ?? ""
        updatedBook.numberOfPages = Int(pagesTextField.text!) ?? 0
        return updatedBook
    }
    
    func fillInEditingBookData(_ book: Book) {
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        pagesTextField.text = String(book.numberOfPages)
    }
    
}
