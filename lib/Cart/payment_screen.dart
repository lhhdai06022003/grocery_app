import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Cart/order_success.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/widget/card_widget.dart';

import '../model/bank_model.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Bank? selectedBank;
  List<Bank> listBanks = [
    Bank(name: "Bank A"),
    Bank(name: "Bank B"),
    Bank(name: "Bank C"),
  ];
  int _type = 1;

  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  String inputData = '';

  void _openInputDialog() async {
    final result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Address'),
          content: TextField(
            onChanged: (value) {
              setState(() {
                inputData = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, inputData);
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        inputData = result;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.165,
            color: kPrimaryColor,
          ),
        ),
        leading: BackButton(),
        backgroundColor: Colors.white,
        foregroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OrderSuccess()));
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Text(
              'Confirm Order',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  letterSpacing: -0.165),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // location
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kBackGroundPaymentColor),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Location",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                          TextButton(
                              onPressed: () {
                                _openInputDialog();
                              },
                              child: Text(
                                "Change",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    letterSpacing: -0.165,
                                    color: kPrimaryColor),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.locationDot,
                            size: 25,
                            color: kPrimaryColor,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          SizedBox(
                            width: 200,
                            height: 40,
                            child: Text(
                              inputData,
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  letterSpacing: -0.165,
                                  color: kTitleColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(width: 1, color: Color(0xffd83022))
                        : Border.all(width: 0.3, color: Colors.black),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.transparent),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 5.0),
                  child: GestureDetector(
                    onTap: () {
                      _showBankSelectionDialog(context);
                    },
                    child: AbsorbPointer(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Selected Bank",
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        controller: TextEditingController(
                            text: selectedBank?.name ?? ''),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              // card visa
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Number Account Bank",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name on the Card",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expiration date',
                        hintText: 'MM/YY',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '***',
                          labelText: "Number Card"
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              // order Sammery
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kBackGroundPaymentColor),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Location",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: kTitleColor),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                          Text(
                            "\$1233333",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Tax",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                          Text(
                            "\$1233333",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Delivery Price",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                          Text(
                            "\$1233333",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 1,
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kTitleColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                          Text(
                            "\$1233333",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                letterSpacing: -0.165,
                                color: kTitleColor),
                          ),
                        ],
                      ),
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

  Future<void> _showBankSelectionDialog(BuildContext context) async {
    Bank? selected = await showDialog<Bank>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a Bank'),
          content: SingleChildScrollView(
            child: ListBody(
              children: listBanks.map((Bank bank) {
                return ListTile(
                  title: Text(bank.name),
                  onTap: () {
                    Navigator.of(context).pop(bank);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );

    if (selected != null) {
      setState(() {
        selectedBank = selected;
      });
    }
  }
}
