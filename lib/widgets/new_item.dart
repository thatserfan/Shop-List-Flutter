import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() {
    return NewItemState();
  }
}

class NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                validator: (value) {
                  return 'demo';
                },
                decoration: const InputDecoration(
                  label: Text(
                    'Name',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
