import 'package:flutter/cupertino.dart';
import 'category_button.dart';
import 'categories_data.dart';

class Categories extends StatelessWidget{
  const Categories({super.key});
  @override
  Widget build(context){
    return  SizedBox(
      width: double.infinity,
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...categories.map((item) {
              return CategoryButton(item);
            })
          ],
        ),
      ),
    );
  }
}