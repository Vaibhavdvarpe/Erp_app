import 'package:flutter/material.dart';
class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final item=["abc","efg"];
    return  
     Scaffold(
      body:ListView.builder(itemBuilder: (context, index) {
        return Text(item[index]);
      },itemCount: item.length,)
     );
    
  }
}