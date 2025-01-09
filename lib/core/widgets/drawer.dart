import 'package:flutter/material.dart';
import 'package:products_api/core/widgets/list_item.dart';
import 'package:products_api/features/category/view/screen/category_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 48,
          ),
          listItem(
            txt: 'Electronics',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: 'electronics',
                    title: 'Electronics',
                  ),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          listItem(
            txt: 'Jewelery',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: 'jewelery',
                    title: 'Jewelery',
                  ),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          listItem(
            txt: "Men's Clothes",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: "men's%20clothing",
                    title: "Men's Clothes",
                  ),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          listItem(
            txt: "Women's Clothes",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: "women's%20clothing",
                    title: "Women's Clothes",
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
