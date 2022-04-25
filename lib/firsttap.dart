import 'package:flutter/material.dart';

class free extends StatefulWidget {
  final String user;
  final int price;
  final String ads;
  final String promo;
  final String control;

  const free({
    Key? key,
    required this.user,
    required this.price,
    required this.ads,
    required this.promo,
    required this.control,
  }) : super(key: key);

  @override
  _freeState createState() => _freeState();
}

class _freeState extends State<free> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 320,
                height: 420,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.user,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("\$",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                      )),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  Text(widget.price.toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 40,
                                      )),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  Text("",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                  Text(" /month",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250.0,
                        height: 30.0,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 3.0,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.ads,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        widget.promo,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        widget.control,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Can Upgrade Service Anytime",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          StadiumBorder()),
                      side: MaterialStateProperty.resolveWith<BorderSide>(
                          (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.pressed)
                                ? Colors.black
                                : Colors.black;
                        return BorderSide(color: color, width: 2);
                      }),
                    ),
                    onPressed: () {},
                    child: Text('SIGN UP'),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
