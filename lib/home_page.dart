import 'package:e_bazar_mobile/constants.dart';
import 'package:flutter/material.dart';
import 'product_model.dart';
import 'item_card.dart';
import 'drawer.dart';
import 'item_page.dart';


class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  var _username;
  var _password;

  HomePage(_username, _password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondColor,
        appBar: AppBar(
          title: Text("E-Bazar"),
        ),
        drawer: CustomDrawer(_username, _password),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ItemPage(products[index],_username,_password)),
                          );
                        }
                        )),
              ),
            ),
          ],
        ));
  }
}
