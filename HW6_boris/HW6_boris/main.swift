
import Foundation

struct bookCrossing {
    var storeID: Int
    var donaters: Int
    var books: Int

    init(storeID: Int, donaters: Int, books: Int) {
        self.books = books
        self.donaters = donaters
        self.storeID = storeID
    }
}

var booksArray: [bookCrossing] = [bookCrossing(storeID: 1, donaters: 13, books: 75),
                                  bookCrossing(storeID: 2, donaters: 64,books: 90),
                                  bookCrossing(storeID: 3, donaters: 3,books: 12),
                                  bookCrossing(storeID: 4, donaters: 23,books: 44),
                                  bookCrossing(storeID: 5, donaters: 8,books: 65)]


var store = booksArray.map { $0.storeID }
print("Открыто -  \(store.count) точек приема книг")

var total = booksArray.map { $0.books }
print("Количество книг: \(total)")

// как к подобной схеме извлечения данных из коллекции можно применить стандарные операции? например просуммировать массив

var allinfo = booksArray.compactMap { $0 }
print(allinfo)



