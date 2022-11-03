import Foundation

struct Card {
    
    var color = ""
    var value=0
}

class Douck  {

    var cards = [Card]()  // task1

    init(){    // task 2
        for counter in 1...30 {
            
            if( counter<10){
                self.cards.append(Card(color: "Red", value: Int.random(in: 1...2) ))
            } else if (counter < 20){
                self.cards.append(Card(color: "Blue", value: Int.random(in: 3...4) ))
            } else {
                self.cards.append(Card(color: "Green", value: Int.random(in: 5...6) ))
            }
           
        }//end of for
    }// end of init()
     
   
    
    func isEmpty () -> Bool {   // task 4
        return true
    }
    
     
    func shuffle (){    // task 5
        self.cards.shuffle()
    }
    
} // end of class Douck


class Player {
    
    var PlayerName = ""   // task 1
    var hand = [Card]()  // task 2
    
    func drawCard (douck: Douck) -> Card {    // task3
        var card = douck.cards.remove(at: Int.random(in: 0...29))
        hand.append(card)
        return card
    }//end of draw
    
    func rollDice() -> Int {  // task 4
        return Int.random(in: 1...6)
    }
    
}


var docuk = Douck()
 var player = Player()

print(player.drawCard(douck: docuk))
print(player.hand)
print(player.rollDice())





