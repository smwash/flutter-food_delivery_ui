import 'package:flutter/material.dart';

class FoodList {
  String imageUrl;
  String topfavorite;
  String foodname;
  String foodprice;
  String foodWeight;
  String rating;
  IconData iconRating;
  List<Ingredients> ingredients;

  FoodList(
      {this.foodWeight,
      this.foodname,
      this.iconRating,
      this.imageUrl,
      this.rating,
      this.topfavorite,
      this.foodprice,
      this.ingredients});
}

class Ingredients {
  String imagePath1;
  String imagePath2;
  String imagePath3;
  String imagePath4;

  Ingredients(
      {this.imagePath1, this.imagePath2, this.imagePath3, this.imagePath4});
}

List<Ingredients> ingredients = [
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images\chickenIngre.png',
      imagePath2: 'images/fruitsIngre.png',
      imagePath3: 'images/threadmeat.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
  Ingredients(
      imagePath1: 'images/fruitsIngre.png',
      imagePath2: 'images/meatIngre.png',
      imagePath3: 'images/threadmeat.png',
      imagePath4: 'images/milk.png'),
];

List<FoodList> foodList = [
  FoodList(
      imageUrl: 'images/burger.png',
      topfavorite: 'top of the week',
      foodname: 'Cheese Burger',
      foodWeight: 'Weight 540gr',
      foodprice: '5.99',
      rating: '5.0',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/chicken.png',
      topfavorite: 'top of the month',
      foodname: 'Chicken breast',
      foodprice: '6.99',
      foodWeight: 'Weight 600gr',
      rating: '4.5',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/vegetables.png',
      topfavorite: 'top of the day',
      foodname: 'Cheese Burger',
      foodprice: '3.55',
      foodWeight: 'Weight 400gr',
      rating: '4.5',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/softdrink.png',
      topfavorite: 'top of the day',
      foodname: 'Cocacola drink',
      foodprice: '2.99',
      foodWeight: 'Weight 400gr',
      rating: '3.5',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/seafood.png',
      topfavorite: 'top of the month',
      foodname: 'Sea food',
      foodprice: '10.30',
      foodWeight: 'Weight 500gr',
      rating: '4.5',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/pasta.png',
      topfavorite: 'top of the week',
      foodname: 'Italia pasta',
      foodprice: '4.99',
      foodWeight: 'Weight 450gr',
      rating: '5.0',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/smotthie.png',
      topfavorite: 'top of the day',
      foodname: 'Fruit smoothie',
      foodprice: '5.45',
      foodWeight: 'Weight 340gr',
      rating: '5.0',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/orangeJuice.png',
      topfavorite: 'top of the month',
      foodname: 'Orange juice',
      foodprice: '5.99',
      foodWeight: 'Weight 250ltr',
      rating: '3.5',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/cerealbowl.png',
      topfavorite: 'top of the day',
      foodname: 'Cereal bowl',
      foodprice: '5.45',
      foodWeight: 'Weight 50ltr',
      rating: '4.5',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/meat.png',
      topfavorite: 'top of the month',
      foodname: 'Meat streaks',
      foodprice: '2.99',
      foodWeight: 'Weight 290gr',
      rating: '5.0',
      iconRating: Icons.star),
  FoodList(
      imageUrl: 'images/sandwich.png',
      topfavorite: 'top of the month',
      foodname: 'Meat streaks',
      foodprice: '5.20',
      foodWeight: 'Weight 300gr',
      rating: '4.5',
      iconRating: Icons.star),
];
