class Card{
  String Rank;
  String Suit;
  
  Card(this.Rank,this.Suit);

  @override
  String toString() {
    // TODO: implement toString
    return "$Rank of $Suit";
  }
}