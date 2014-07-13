// Playground - noun: a place where people can play

import UIKit

//Lazy Property
/*
delay initialization until its appoprite
only be evaluted the time when it is accessed and only that time
Deinitialization
initialize all values before you use them
set all stored properities first,then call super init

Designed initializers only delegate up
Convenience initilizers only delegate across

*/
/*
class Game {
    var multipleManager = MultiplayerManager()
    var singlePlayer: Player?
    func beginGameWithPlayers(players: Player...) {
        if players.count == 1 {
            singlePlayer = players[0]
        }
        else {
            for player in players {
                multipleManager.addPlayer(player)
            }
        }
    }
}*/

//Closures

/*
*/
var numbers = [1,4,-10,99,100000,-9999999]

numbers.sort({(a: Int, b: Int) -> Bool in
                return a < b})
//[-9,999,999, -10, 1, 4, 99, 100,000]
//Single return expression
numbers.sort({a, b in a > b})
//[100,000, 99, 4, 1, -10, -9,999,999]
//Single argument
numbers.sort({$0 < $1})
//[-9,999,999, -10, 1, 4, 99, 100,000]
numbers.sort {$0 > $1}
numbers

let words = ["angry","hungry","happy","sad"]
var result = words.filter{$0.hasSuffix("gry")}
result
result = words.map({$0.uppercaseString})
result
var str = words.reduce("HULK", combine: {"\($0),\($1)"})
str



//Pattern Matching

/*
Switch
Enumerations
*/

enum TrainState {
    case onTime
    case onDelay(Int)
}

var trainState = TrainState.onDelay(10)

switch trainState {
    case .onTime:
        println("On time")
    case .onDelay(let minutes):
        println("\(minutes) minutes")
}

switch trainState {
    case .onTime:
        ("On time")
    case .onDelay(1):
        println("It is one minute")
    case .onDelay(2..10):
        ("Too much time")
    case .onDelay(_):
        ("Oh my god")
}

//Type Pattern

//Tuple pattern

func stateFromPList(list: Dictionary<String,AnyObject>) -> State? {
    switch (list["name"], list["population", list["abbr"]]) {
    case (.Some(let listName as String), .Some(let pop as NSNumber), .Some(let abbr as NSString)) where abbr.length == 2:
        return State(listName, pop, abbr)
    default:
        return nil
    }
}



