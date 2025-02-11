import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_practice/provider/favourite_provider.dart';
import '../../provider/favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

List<int> selecteditem = [];

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteItemProvider>(
                      builder: (context, value, chile) {
                    return ListTile(
                      onTap: () {
                        if (value.selecteditem.contains(index)) {
                          value.removeitem(index);
                        } else {
                          value.additem(index);
                        }
                      },
                      trailing: Icon(value.selecteditem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                      title: Text('item' + index.toString()),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
