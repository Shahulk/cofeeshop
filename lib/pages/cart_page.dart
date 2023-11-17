import 'package:cofeeshop/componets/coffeetile.dart';
import 'package:cofeeshop/models/coffee.dart';
import 'package:cofeeshop/models/coffeeshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemFromCart(coffee);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Payment Complited"),
    ));
  }
  void paynow(){

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text('Your Cart',
              style: TextStyle(fontSize: 20),),
              Expanded(child: ListView.builder(
                itemCount: value.userCart.length,
                  itemBuilder: (context,index){
                Coffee eachCoffee = value.userCart[index];
                return Coffetile(coffee: eachCoffee, onPressed: ()=> removeFromCart(eachCoffee), icon: Icon(Icons.delete),);
              })),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text("Pay Now",style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  ),

                ),
              )
            ],
          ),
        )));
  }
}
