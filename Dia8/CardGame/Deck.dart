import 'Card.dart';

class Deck{
  
  List<Card> Cards = [];

  Deck(){
    var ranks = ['Ace','Two','Three','Four','Five'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];

    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(rank,suit);
        Cards.add(card);

      }
    }
  }

  @override
  String toString() {
    
    return Cards.toString();
  }


  SuffleDeck(){
    return Cards.shuffle();
  }

  cardWithSuit(String suit){
    return Cards.where((card){
      return card.Suit == suit;
    });
  }

  RemoveCard(String suit,String rank){
    Cards.removeWhere((card){
      return (card.Suit == suit) && (card.Rank == rank);
    });
  }

  deal(int handSize){
    var Hand = Cards.sublist(0,handSize);
    Cards.sublist(handSize);

    return Hand;

  }

}