import 'package:flutter/material.dart';
import 'constants.dart';

List countries = ["INR", "CAD", "AUD", "POUND", "KSH", "UGX"];

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedMenu = "INR";

  SizedBox getSizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
        child: Text("INR"),
        value: "INR",
      ),
      const DropdownMenuItem(
        child: Text("AUD"),
        value: "AUD",
      ),
      const DropdownMenuItem(
        child: Text("CAD"),
        value: "CAD",
      ),
      const DropdownMenuItem(
        child: Text("POUND"),
        value: "POUND",
      ),
    ];
    return menuItems;
  }

  // ["INR","CAD","AUD","POUND","KSH","UGX"]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Open Exchange Live"),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        getSizedBox(15.0, 0),
                        const Text("USD to Any Currency"),
                        getSizedBox(15.0, 0),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: getInputDecoration(
                                "Enter USD : ", "अमरीकी डालर में प्रवेश करें"),
                          ),
                        ),
                        getSizedBox(15.0, 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            DropdownButton(
                              borderRadius: BorderRadius.circular(10),
                              value: selectedMenu,
                              items: getDropDownMenuItems(),
                              onChanged: (value) {
                                setState(() {
                                  selectedMenu = value.toString();
                                });
                              },
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Convert"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.pinkAccent)),
                            )
                          ],
                        ),
                        getSizedBox(15.0, 0),
                        const Text("Converted currency will display here"),
                        getSizedBox(15.0, 0),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        getSizedBox(15.0, 0),
                        Text("Convert Any Currency"),
                        getSizedBox(15.0, 0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: getInputDecoration(
                                "Enter Amount : ", "यहाँ राशि दर्ज करें"),
                          ),
                        ),
                        getSizedBox(15.0, 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            DropdownButton(
                              borderRadius: BorderRadius.circular(10),
                              value: selectedMenu,
                              items: getDropDownMenuItems(),
                              onChanged: (value) {
                                setState(() {
                                  selectedMenu = value.toString();
                                });
                              },
                            ),
                            const Text(" To "),
                            DropdownButton(
                              borderRadius: BorderRadius.circular(10),
                              value: selectedMenu,
                              items: getDropDownMenuItems(),
                              onChanged: (value) {
                                setState(() {
                                  selectedMenu = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                        getSizedBox(15.0, 0),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Convert"),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pinkAccent)),
                        ),
                        getSizedBox(15.0, 0),
                        Text("Conveted currency will display here"),
                        getSizedBox(15.0, 0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
