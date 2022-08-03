import 'package:flutter/material.dart';

List countries = ["INR", "CAD", "AUD", "POUND", "KSH", "UGX"];

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedMenu = "INR";

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
          title: const Text("Currency Exchange"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
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
                      SizedBox(
                        height: 15,
                      ),
                      Text("USD to Any Currency"),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Enter USD:"),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                      SizedBox(
                        height: 15,
                      ),
                      Text("Conveted currency will display here"),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text("Convert Any Currency"),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Enter Amount:"),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                          Text("To"),
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
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Convert"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pinkAccent)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Conveted currency will display here"),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
