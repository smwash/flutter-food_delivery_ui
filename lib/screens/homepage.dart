import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/bottomNav.dart';
import 'package:food_delivery_app/model/category_list.dart';
import 'package:food_delivery_app/model/food_list.dart';

import 'detailpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            Icons.menu,
            color: Colors.black87,
            size: 28.0,
          ),
        ),
        // leading:
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black87,
                  size: 28.0,
                ),
                SizedBox(width: 20.0),
                Icon(
                  Icons.shopping_basket,
                  color: Colors.black87,
                  size: 28.0,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food',
                        style: TextStyle(
                            fontSize: 21.0,
                            fontFamily: 'Poppins',
                            color: Colors.black87),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'Delivery',
                        style: TextStyle(
                            fontSize: 32.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1),
                      ),
                    ],
                  ),
                  Image(
                    height: MediaQuery.of(context).size.height / 8,
                    image: AssetImage('images/foodDelivery.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[200],
                      offset: Offset(0, 10),
                      blurRadius: 5.0),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search..',
                  hintStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontFamily: 'Poppins'),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 17.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: MediaQuery.of(context).size.height / 4.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    CategoryList foodCategory = categoryList[index];
                    return GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 4.2,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 14.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isSelected == index
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey[100],
                              offset: Offset(0, 5),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage(foodCategory.image),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              foodCategory.foodName,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              padding: EdgeInsets.all(13.0),
                              decoration: BoxDecoration(
                                  color: isSelected == index
                                      ? Colors.white
                                      : Theme.of(context).accentColor,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: isSelected == index
                                    ? Colors.black
                                    : Colors.white,
                                size: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isSelected = index;
                        });
                      },
                    );
                  }),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Popular',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(height: 10.0),
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: foodList.length,
                itemBuilder: (context, index) {
                  FoodList foodlist = foodList[index];
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 5),
                            blurRadius: 5.0),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 19.0,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    foodlist.topfavorite,
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 3.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                foodlist.foodname,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 3.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                foodlist.foodWeight,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Poppins',
                                    color: Colors.black54),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 20.0),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                  child: Icon(Icons.add, color: Colors.black),
                                ),
                                SizedBox(width: 12.0),
                                Icon(Icons.star,
                                    color: Colors.black, size: 12.0),
                                SizedBox(width: 8.0),
                                Text(
                                  foodlist.rating,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Image(
                              image: AssetImage(foodlist.imageUrl),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      DetailPage(foodDetail: foodlist),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
