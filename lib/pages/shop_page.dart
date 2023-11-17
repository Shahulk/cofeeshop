import 'package:cofeeshop/componets/coffeetile.dart';
import 'package:cofeeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/coffeeshop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addtoCart(Coffee coffee){

    Provider.of<CoffeeShop>(context,listen: false).AddItemToCart(coffee);
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Successfully added to cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<CoffeeShop>(builder: (context,value,child) =>
      SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text('How would you like your coffee?',style: TextStyle(fontSize: 20),),
            SizedBox(height: 25,),
            Expanded(child: ListView.builder(
              itemCount: value.coffeeshop.length,
                itemBuilder: (context,index){
              Coffee eachCoffee = value.coffeeshop[index] ;
              return Coffetile(coffee: eachCoffee,
                icon: Icon(Icons.add),
                onPressed: ()=> addtoCart(eachCoffee),
              );

            }))
          ],
        ),
      ),),
    );
  }
}
