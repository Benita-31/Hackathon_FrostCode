import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/coffee.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hackathon/models/coffee_shop.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child)=> SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
        children: [const Text("Currently Open Schemes", 
        style: TextStyle(fontSize: 20),),
        const SizedBox(height: 25),

        Expanded(
          child: ListView.builder(
          itemCount: value.coffeeShop.length,
          itemBuilder: (context, index)
        {
            Coffee eachCoffee = value.coffeeShop[index];
            return Text(eachCoffee.name,);
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