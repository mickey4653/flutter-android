class Quote{
  String text;
  String author;

//   Quotes(String text, String author){
// this.text = text;
// this.author= author;
//   }

//instead using named parameters use this

Quote({required this.text, required this.author});
}

// Quotes myQuotes = Quotes('be yourself in all situations', 'Michael'); //you dont need this anymore