import 'package:bmicalc/constants/constants.dart';
import 'package:bmicalc/widgets/leftsidewidget.dart';
import 'package:bmicalc/widgets/rightsidewidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  double resultbmi = 0;
  String resultbmitext = '';
  double widthsizebad = 100.0;
  double widthsizegood = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'تو چنده؟ BMI',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120.0,
                    child: TextField(
                      controller: weightcontroller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: 'وزن',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.red.withOpacity(0.7),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    width: 120.0,
                    child: TextField(
                      controller: heightcontroller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: 'قد',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.red.withOpacity(0.7),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightcontroller.text);
                  final height = double.parse(heightcontroller.text);
                  setState(() {
                    resultbmi = weight / (height * height);
                    if (resultbmi > 25) {
                      widthsizebad = 300.0;
                      widthsizegood = 50.0;
                      resultbmitext = 'شما اضافه وزن دارید';
                    } else if (resultbmi >= 18.5 && resultbmi <= 25) {
                      widthsizebad = 50.0;
                      widthsizegood = 300.0;
                      resultbmitext = 'شما نرمال هستید';
                    } else {
                      widthsizebad = 50.0;
                      widthsizegood = 50.0;
                      resultbmitext = 'شما کمتر از وزن نرمال هستید';
                    }
                  });
                },
                child: Text(
                  '!محاسبه کن',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                '${resultbmi.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 65.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$resultbmitext',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: red,
                ),
              ),
              SizedBox(height: 80.0),
              RightSide(widthside: widthsizebad),
              SizedBox(height: 10.0),
              LeftSide(widthside: widthsizegood),
            ],
          ),
        ),
      ),
    );
  }
}
