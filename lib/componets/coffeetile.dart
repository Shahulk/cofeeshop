import 'package:cofeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class Coffetile extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onPressed;
  Coffetile({Key? key,required this.coffee,
    required this.onPressed,
    required this.icon,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      child: ListTile(
        title: Text(
          coffee.name,
        ),
        subtitle: Text(coffee.Price),
        leading: Image.asset(coffee.imagepath
        ),
        trailing: IconButton(icon: icon,
        onPressed: onPressed,),
      ),
    );
  }
}
