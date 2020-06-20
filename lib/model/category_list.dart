class CategoryList {
  String image;
  String foodName;

  CategoryList({this.foodName, this.image});
}

List<CategoryList> categoryList = [
  CategoryList(image: 'images/burger-icon.jpg', foodName: 'Burger'),
  CategoryList(image: 'images/drink-icon.jpg', foodName: 'Drinks'),
  CategoryList(image: 'images/meat-icon.png', foodName: 'Meat'),
  CategoryList(image: 'images/pizza-icon.jpg', foodName: 'Pizza'),
  CategoryList(image: 'images/seafood-icon.png', foodName: 'Seafood'),
  CategoryList(image: 'images/hotdog-icon.jpg', foodName: 'Hotdog'),
  CategoryList(image: 'images/vegetables-icon.png', foodName: 'Vegetables'),
  CategoryList(image: 'images/cereals food-icon.png', foodName: 'Cereals'),
];
