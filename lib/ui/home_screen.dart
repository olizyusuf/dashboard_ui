import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // card text style
    var cardTxtStyle =
        const TextStyle(fontFamily: 'Poopins Regular', color: Colors.blueGrey);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C5635AQHAwchw4SWFUA/profile-framedphoto-shrink_100_100/0/1620122081134?e=1646121600&v=beta&t=pcriblsSzeVq7ZqX_hfYv6__4wT0wk2uZhauzWLzxsA'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Nurkholis Yusuf',
                                style: TextStyle(
                                    fontFamily: 'Poopins Bold',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text('1234567890',
                                  style: TextStyle(
                                      fontFamily: 'Poopins Regular',
                                      fontSize: 14,
                                      color: Colors.white))
                            ],
                          )
                        ]),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/download/30245/point-of-sale-terminal-pos.svg',
                                  height: 100,
                                  color: Colors.blue,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'POS',
                                  style: cardTxtStyle,
                                )
                              ]),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/download/393043/chart-diagram-graph-increase-statistics.svg',
                                  height: 100,
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'REPORT',
                                  style: cardTxtStyle,
                                )
                              ]),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/download/392662/coins-dollar-money-currency-finance-payment.svg',
                                  height: 100,
                                  color: Colors.green,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'PROFIT',
                                  style: cardTxtStyle,
                                )
                              ]),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/download/195817/export.svg',
                                  height: 100,
                                  color: Colors.green[300],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'EXPORT',
                                  style: cardTxtStyle,
                                )
                              ]),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/download/3130/user.svg',
                                  height: 100,
                                  color: Colors.yellow[700],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'USER',
                                  style: cardTxtStyle,
                                )
                              ]),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  'https://www.svgrepo.com/download/302502/setting-2.svg',
                                  height: 100,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'SETTING',
                                  style: cardTxtStyle,
                                )
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
