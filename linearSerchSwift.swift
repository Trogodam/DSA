
/*
Boys now we are doing it in swift
Linear search is the simplest of em all. 
You just straight up look up elements one by one
hmm. then why is the need for this? 
like we need to find the location of an element in a list? 
or is there that element in that list? 
hmm. maybe to make sure some item exists,yeah an item in movie library, like if that movie exists in its library or return nil
*/


var movieList = ["Jurassic Park", "John Wick", "Avatar","Her","Kill Bill","Jumper","Titanic"]

var movieToFind = "Titanic"

func movieFinder(_ list: [String], _ item: String) -> Int? {
    for i in 0..<list.count {
        if list[i] == item {
            return i
        }
    }
    return nil
}


var itemFoundAt: Int? = movieFinder(movieList, movieToFind)
if itemFoundAt != nil {
    print("Item found at \(itemFoundAt!)")
}
