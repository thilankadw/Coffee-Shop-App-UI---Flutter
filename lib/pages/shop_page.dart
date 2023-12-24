import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_coffee_shop/components/coffee_tile.dart';
import 'package:test_coffee_shop/models/coffee_shop.dart';
import 'package:test_coffee_shop/models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "How would you like your coffee?",
                style: TextStyle(fontSize: 20),
              ),

              SizedBox(height: 25),

              //list of coffee to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    //get individual coffee
                    Coffee eachCoffee = value.coffeeShop[index];

                    //return the title for this coffee
                    return CoffeeTile(coffee: eachCoffee);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
