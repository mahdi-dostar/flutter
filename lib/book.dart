import 'package:faker/faker.dart';

class Book {
  static var faker = Faker();
  String title, writer, price, image, description = getDescription(faker.lorem.sentences(200));
  int pages;
  double rating;
  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

String getTilte(var title){
  var res = "";
  for(var word in title)
    res += word + " " ;
  return res ;
}

String getDescription(var sentences){
  var res = "";
  for(var sentence in sentences){
      res += sentence + " " ;
  }
  return res ;
}
final List<Book> books = [
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/1.jpeg',
      4.5,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/2.jpeg',
      3.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/3.jpeg',
      3.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + ' t',
      'res/4.jpeg',
      3.5,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/5.jpeg',
      3.8,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/7.jpeg',
      5.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/8.jpeg',
      4.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/9.jpeg',
      3.5,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/10.jpeg',
      4.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/11.jpeg',
      4.0,
      faker.randomGenerator.integer(500 , min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/12.jpeg',
      4.0,
      faker.randomGenerator.integer(500 , min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/13.jpeg',
      4.0,
      faker.randomGenerator.integer(500 , min: 150)),
];
