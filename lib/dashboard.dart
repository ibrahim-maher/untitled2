import 'package:flutter/material.dart';

import 'componants/monthley.dart';
import 'componants/weekly.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  List<Widget> screens = [
    Weekly(),
    Monthly(),
    Yearly(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const Text(
          'Hallo\n  ahemd',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: const AssetImage('assets/images/doctor.png'),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Dashboard',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(25.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: index == 0
                        ?  Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withOpacity(0.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text(
                      'Weekly',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: index == 1
                        ?  Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withOpacity(0.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text(
                      'Monthly',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: index == 2
                        ?  Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withOpacity(0.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Text(
                      'Yearly',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(child: screens[index]),
          ),
        ],
      ),
    );
  }
}

class Weekly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text("Blood sugar rate",style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).primaryColor,
        ),),
        MyChartPage(),
        SizedBox(
          height: 20,
        ),
        Text("Pills ",style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).primaryColor,
        ),),
        MyChartPage(),
      ],
    );
  }
}


class Monthly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text("Blood sugar rate",style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).primaryColor,
        ),),
        MyChartMonthlyPage(),
        SizedBox(
          height: 20,
        ),
        Text("Pills ",style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).primaryColor,
        ),),
        MyChartMonthlyPage(),
      ],
    );
  }
}

class Yearly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Yearly'),
    );
  }
}
