import 'package:flutter/material.dart';
import 'product.dart';
import 'item_card.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
    var _username;
    var _password;

    HomePage(_username, _password);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        //   child: Text(
        //     "Women",
        //     style: Theme.of(context)
        //         .textTheme
        //         .headline5
        //         .copyWith(fontWeight: FontWeight.bold),
        //   ),
        // ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  // product: products[index],
                  press: () { print(5);}
                      // Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => DetailsScreen(
                //           product: products[index],
                //         ),
                //       )
                //       ),
                )
          ),
          ),
        ),
      ],
    );
  }
}
