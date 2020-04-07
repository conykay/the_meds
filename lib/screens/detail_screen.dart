import 'package:flutter/material.dart';
import 'package:themeds/utils/constants.dart';
import 'package:themeds/customWidgtes/pill_deatail_row.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PillDetails extends StatefulWidget {
  PillDetails({this.pillAmount, this.imageUrl, this.pillName, this.pillPrice});
  final String imageUrl;
  final String pillName;
  final double pillPrice;
  final String pillAmount;
  @override
  _PillDetailsState createState() => _PillDetailsState();
}

class _PillDetailsState extends State<PillDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC0E0F9),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 25.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 35.0,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  child: Image.asset(widget.imageUrl),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 20.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.pillName,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.star_border,
                            size: 35.0,
                          )
                        ],
                      ),
                      kSizedBox,
                      Text(
                        'Tablets * ${widget.pillAmount} pieces',
                        style: kGreyTypeText,
                      ),
                      kSizedBox,
                      kSizedBox,
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '\$${widget.pillPrice}',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '10 in stock',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                                LinearProgressIndicator(
                                  value: 0.5,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      kSizedBox,
                      kSizedBox,
                      kSizedBox,
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            PillsInfoColumn(
                              explanation1: 'Dosage Form',
                              value1: 'Pills',
                              explanation2: 'Dosage',
                              value2: '2.0g',
                            ),
                            PillsInfoColumn(
                              explanation1: 'Active Substance',
                              value1: 'Ibuprofen',
                              explanation2: 'Manufacturer',
                              value2: 'Biosyn,Russia',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Alert(
                              context: context,
                              type: AlertType.success,
                              title: " Added to cart ",
                              desc: "Proceed to the drug store ?",
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "COOL",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  width: 120,
                                )
                              ],
                            ).show();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blue),
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
