import 'package:flutter/material.dart';
import 'package:themeds/screens/detail_screen.dart';
import 'package:themeds/utils/constants.dart';
import 'package:themeds/customWidgtes/pill_detail_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imageUrl1 = 'images/pill1.png';
  String amount1 = '50';
  String itemName1 = 'B Lozenges';
  double price1 = 4.69;
  String imageUrl2 = 'images/pill2.png';
  String amount2 = '100';
  String itemName2 = 'Y Lozenges';
  double price2 = 10.25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 30.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.near_me,
                      color: Color(0xFFBEBEBE),
                    ),
                    Text(
                      'London',
                      style: kGreyTypeText,
                    ),
                  ],
                ),
                kSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hi, Cornelius!',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/profile.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
                kSizedBox,
                TextField(
                  style: TextStyle(color: Colors.black38),
                  decoration: kSearchFieldDecoration,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.only(left: 20.0),
                  height: 175.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFFE2F2FF),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'We will deliver your medicines',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              height: 30.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFF367FF8)),
                              child: FlatButton(
                                onPressed: null,
                                child: Text(
                                  'catalog',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Image.asset('images/deliveryguy.png'),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.storage),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PillDetailContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PillDetails(
                              imageUrl: imageUrl1,
                              pillAmount: amount1,
                              pillName: itemName1,
                              pillPrice: price1,
                            ),
                          ),
                        );
                      },
                      imageUrl: imageUrl1,
                      amount: amount1,
                      itemName: itemName1,
                      price: price1,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    PillDetailContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PillDetails(
                              imageUrl: imageUrl2,
                              pillAmount: amount2,
                              pillName: itemName2,
                              pillPrice: price2,
                            ),
                          ),
                        );
                      },
                      imageUrl: imageUrl2,
                      amount: amount2,
                      itemName: itemName2,
                      price: price2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
