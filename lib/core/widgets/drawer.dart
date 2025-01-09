import 'package:flutter/material.dart';
import 'package:products_api/core/constants/app_string.dart';
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
            txt: AppString.electro,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: AppString.electroEP,
                    title: AppString.electro,
                  ),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          listItem(
            txt: AppString.jewl,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: AppString.jewlEP,
                    title: AppString.jewl,
                  ),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          listItem(
            txt: AppString.menCloth,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: AppString.menClothEP,
                    title: AppString.menCloth,
                  ),
                ),
              );
            },
          ),
          const Divider(
            thickness: 1,
          ),
          listItem(
            txt: AppString.womenCloth,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(
                    endPoint: AppString.womenClothEP,
                    title: AppString.womenCloth,
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
