import 'package:flutter/material.dart';
import 'package:shop_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(groceryItems[index].name),
          leading:
              Icon(Icons.square, color: groceryItems[index].category.color),
          trailing: Text(
            groceryItems[index].quantity.toString(),
          ),
        ),
      ),
    );
  }
}
