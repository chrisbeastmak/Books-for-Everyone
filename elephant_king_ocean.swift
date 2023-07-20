//MARK: - Books for Everyone

//1
 import UIKit

//2
class Book {
  
    //3
    var title: String
    var authors: [String]
    var numPages: Int
    
    //4
    init(title: String, authors: [String], numPages: Int) {
        self.title = title
        self.authors = authors
        self.numPages = numPages
    }
    
    //5
    func description() -> String {
        return "This book is entitled '\(title)' and was written by \(authors.joined(separator: ", ")). It has \(numPages) pages."
    }
}

//6
let book1 = Book(title: "The Catcher in the Rye", authors: ["J. D. Salinger"], numPages: 214)
print(book1.description())

 //7
class ChildrensBook: Book {
    
    //8 
    var ageRange: String
    
    //9
    init(title: String, authors: [String], numPages: Int, ageRange: String) {
        self.ageRange = ageRange
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //10
    override func description() -> String {
        return super.description() + " It is recommended for kids aged \(ageRange)."
    }
}

//11
let book2 = ChildrensBook(title: "Charlie and the Chocolate Factory", authors: ["Roald Dahl"], numPages: 224, ageRange: "5-9")
print(book2.description())

//12
class Textbook: Book {
    
    //13
    var subject: String
    
    //14
    init(title: String, authors: [String], numPages: Int, subject: String) {
        self.subject = subject
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //15
    override func description() -> String {
        return super.description() + " It covers the subject of \(subject)."
    }
}

//16
let book3 = Textbook(title: " Introduction to Algorithms", authors: ["Thomas H. Cormen", "Charles E. Leiserson", "Ronald L. Rivest", "Clifford Stein"], numPages: 1312, subject: "Computer Science")
print(book3.description())

//17
class Novel : Book {
    
    //18
    var genre : String
    
    //19
    init(title: String, authors: [String], numPages: Int, genre: String) {
        self.genre = genre
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //20
    override func description() -> String {
        return super.description() + "It is a \(genre) novel."
    }
}

//21
let book4 = Novel(title: "To Kill a Mockingbird", authors: ["Harper Lee"], numPages: 281, genre: "drama")
print(book4.description())

//22
class ScienceFiction: Book {
    
    //23
    var sciFiSetting: String
    
    //24
    init(title: String, authors: [String], numPages: Int, sciFiSetting: String) {
        self.sciFiSetting = sciFiSetting
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //25
    override func description() -> String {
        return super.description() + " The plot takes place in a \(sciFiSetting) setting."
    }
}

//26
let book5 = ScienceFiction(title: "Do Androids Dream of Electric Sheep?", authors: ["Philip K. Dick"], numPages: 252, sciFiSetting: "post apocalyptic earth")
print(book5.description())

//27
class Fantasy: Book {
    
    //28
    var fantasySetting: String
    
    //29
    init(title: String, authors: [String], numPages: Int, fantasySetting: String) {
        self.fantasySetting = fantasySetting
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //30
    override func description() -> String {
        return super.description() + " It takes place in a \(fantasySetting) universe."
    }
}

//31
let book6 = Fantasy(title: "The Lord of the Rings", authors: ["J.R.R. Tolkien"], numPages: 1216, fantasySetting: "medieval")
print(book6.description())

//32
class Biography: Book {
    
    //33
    var person: String
    
    //34
    init(title: String, authors: [String], numPages: Int, person: String) {
        self.person = person
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //35
    override func description() -> String {
        return super.description() + " This book is a biography of \(person)."
    }
}

//36
let book7 = Biography(title: "Steve Jobs", authors: ["Walter Isaacson"], numPages: 656, person: "Steve Jobs")
print(book7.description())

//37
class Horror: Book {
    
    //38
    var monster: String
    
    //39
    init(title: String, authors: [String], numPages: Int, monster: String) {
        self.monster = monster
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //40
    override func description() -> String {
        return super.description() + " It features a horrifically terrifying \(monster)."
    }
}

//41
let book8 = Horror(title: "Dracula", authors: ["Bram Stoker"], numPages: 464, monster: "vampire")
print(book8.description())

//42 
class Romance: Book {
    
    //43
    var loveStory: String
    
    //44
    init(title: String, authors: [String], numPages: Int, loveStory: String) {
        self.loveStory = loveStory
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //45
    override func description() -> String {
        return super.description() + " It is a romantic \(loveStory) story."
    }
}

//46
let book9 = Romance(title: "Pride and Prejudice", authors: ["Jane Austen"], numPages: 279, loveStory: "comedy-drama")
print(book9.description())

//47
class HistoricalFiction: Book {
    
    //48
    var historicalEra: String
    
    //49
    init(title: String, authors: [String], numPages: Int, historicalEra: String) {
        self.historicalEra = historicalEra
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //50
    override func description() -> String {
        return super.description() + " It is set in the \(historicalEra) era."
    }
}

//51
let book10 = HistoricalFiction(title: "The Fellowship of the Ring", authors: ["J.R.R. Tolkien"], numPages: 423, historicalEra: "medieval")
print(book10.description())

//52 
class Mystery: Book {
    
    //53
    var mysteryType: String
    
    //54
    init(title: String, authors: [String], numPages: Int, mysteryType: String) {
        self.mysteryType = mysteryType
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //55
    override func description() -> String {
        return super.description() + " It is a \(mysteryType) mystery."
    }
}

//56
let book11 = Mystery(title: "The Da Vinci Code", authors: ["Dan Brown"], numPages: 454, mysteryType: "thriller")
print(book11.description())

//57 
class GraphicNovel: Book {
    
    //58
    var subjectMatter: String
    
    //59
    init(title: String, authors: [String], numPages: Int, subjectMatter: String) {
        self.subjectMatter = subjectMatter
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //60
    override func description() -> String {
        return super.description() + " It is a graphic novel about \(subjectMatter)."
    }
}

//61
let book12 = GraphicNovel(title: "Watchmen", authors: ["Alan Moore", "Dave Gibbons"], numPages: 416, subjectMatter: "superheroes")
print(book12.description())

//62
class Cookbook: Book {
    
    //63
    var cuisine: String
    
    //64
    init(title: String, authors: [String], numPages: Int, cuisine: String) {
        self.cuisine = cuisine
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //65
    override func description() -> String {
        return super.description() + " It includes recipes for \(cuisine) cuisine."
    }
}

//66
let book13 = Cookbook(title: "The Joy of Cooking", authors: ["Irma S. Rombauer", "Marion Rombauer Becker"], numPages: 1046, cuisine: "all")
print(book13.description())

//67
class SelfHelp: Book {
    
    //68
    var topic: String
    
    //69
    init(title: String, authors: [String], numPages: Int, topic: String) {
        self.topic = topic
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //70
    override func description() -> String {
        return super.description() + " It covers the topic of \(topic)."
    }
}

//71
let book14 = SelfHelp(title: "The 7 Habits of Highly Effective People", authors: ["Stephen R. Covey"], numPages: 416, topic: "self-improvement")
print(book14.description())

//72
class Philosophy: Book {
    
    //73
    var majorIdeas: String
    
    //74
    init(title: String, authors: [String], numPages: Int, majorIdeas: String) {
        self.majorIdeas = majorIdeas
        super.init(title: title, authors: authors, numPages: numPages)
    }
    
    //75
    override func description() -> String {
        return super.description() + " It covers the ideas of \(majorIdeas)."
    }
}

//76
let book15 = Philosophy(title: "The Republic", authors: ["Plato"], numPages: 374, majorIdeas: "justice, morality, and human nature")
print(book15.description())