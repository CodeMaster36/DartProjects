void main(){
  var deck = new Deck();
  print(deck);
  deck.cardShuffle();
  print(deck);
  print(deck.cardsWithSuit("Diamonds"));
  deck.removeCard("Hearts","Ace");
  print(deck);
  print(deck.deal(3));
  print(deck);
}

class Deck{

  List<Card> cards = [];
  
  Deck(){
    var ranks = ["Ace","Two","Three","Four","Five"];
    var suits = ["Hearts","Diamonds","Spades","Clubs"];
    
    for(int i=0;i<suits.length;i++){
      for(int j=0;j<ranks.length;j++){
        var card = new Card(suits[i],ranks[j]);
        cards.add(card);
      }
    }
  }
  
  toString(){
    return cards.toString();
  }
  
  cardShuffle(){
    cards.shuffle();
  }
  
  cardsWithSuit(String suit){
    return cards.where((card) => card.suit==suit);
  }
  
  removeCard(String suit, String rank){
    return cards.removeWhere((card) => (card.rank==rank) && (card.suit==suit));
  }
  
  deal(int handSize){
    var hand = cards.sublist(0,handSize);
    cards = cards.sublist(handSize);
    return hand;
  }
}

class Card{

  String rank;
  String suit;
  
  Card(this.suit,this.rank);
  
  toString(){
    return("$rank of $suit");
  }
}

