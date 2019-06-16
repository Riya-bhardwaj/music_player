import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var gender = ['Female', 'Male', 'Others'];
  var month = ['Jan', 'feb', 'march', 'april','may','june','July','Aug','Sep','oct','nov','Dec'];
  var day = ['1', '2', '3', '4', '5'];
  var year = ['2000', '1999', '1998', '2001','2002','20003'];
  var currentItemSelected;
  var currentMonth;
  var currentDay;
  var currentYear;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: screenWidth,
                  color: Colors.indigo,
                  child: Center(
                    child: Text(
                      "Sign Up For Facebook",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                _textField("First Name", screenWidth),
                SizedBox(
                  height: 20.0,
                ),
                _textField("Last Name", screenWidth),
                SizedBox(
                  height: 20.0,
                ),
                _textField("Email or Number", screenWidth),
                SizedBox(
                  height: 20.0,
                ),
                _textField("Password", screenWidth),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 10.0,
                  ),
                  alignment: FractionalOffset.bottomLeft,
                  child: DropdownButton<String>(
                    hint: new Text("Gender"),
                    style: TextStyle(fontSize: 17.0, color: Colors.black54),
                    items: gender.map(
                          (String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      },
                    ).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this.currentItemSelected = newValueSelected;
                      },
                      );
                    },
                    value: currentItemSelected,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 10.0,
                    top: 10.0,
                  ),
                  alignment: FractionalOffset.bottomLeft,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 10.0,
                          ),
                          height: 30,
                          width: double.infinity,
                          child: Text(
                            "Birthday:",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: DropdownButton<String>(hint: new Text("Date"),
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.black54),
                          items: day.map(
                                (String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            },
                          ).toList(),
                          onChanged: (String newValueSelected) {
                            setState(
                                  () {
                                this.currentDay = newValueSelected;
                              },
                            );
                          },
                          value: currentDay,
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: DropdownButton<String>(hint: new Text("Month"),
                          style:
                          TextStyle(fontSize: 17.0, color: Colors.black54),
                          items: month.map(
                                (String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            },
                          ).toList(),
                          onChanged: (
                              String newValueSelected) {
                            setState(() {
                              this.currentMonth = newValueSelected;
                            },
                            );
                          },
                          value: currentMonth,
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: DropdownButton<String>(hint: new Text("Year"),
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.black54),
                          items: year.map(
                                (String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            },
                          ).toList(),
                          onChanged: (String newValueSelected) {
                            setState(
                                  () {
                                this.currentYear = newValueSelected;
                              },
                            );
                          },
                          value: currentYear,
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  color: Colors.grey[100],
                  child: new Text(
                    "By clicking Sing up ,you agree to our Facebook Terms and that you have read our Privacy Policy,including our cookies Use .",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50,
                  color: Colors.indigoAccent,
                  width: screenWidth,
                  margin: EdgeInsets.symmetric(horizontal:30.0,vertical: 10.0),
                  child: RaisedButton(
                    onPressed: null,
                    child: new Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textField(String hintText,double width){
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      height: 40,
      width: width,
      // margin: EdgeInsets.only(right: 20.0),
      color: Colors.white,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(border: InputBorder.none,
            hintText: hintText),
      ),
    );
  }
}
