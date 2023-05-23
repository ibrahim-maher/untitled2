import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  const myCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10,),
      decoration:
        BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,


        ),
      width: 200,
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: AssetImage('assets/images/7-COMMON-SIDE-EFFECTS-OF-DIABETES.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 120,
                child: Text(
                  "bla bla bla bla",
                  style: TextStyle(

                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Read more",
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .primaryVariant,
                      fontSize: 10,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
