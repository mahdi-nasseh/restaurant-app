import "package:fastfoodshopping/main.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/pizzaDinner.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeData.colorScheme.background,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 6,
                        width: 80,
                        decoration: BoxDecoration(
                          color: secondaryFontColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(170, 196, 196, 196),
                    radius: 18,
                    child: Icon(
                      CupertinoIcons.heart,
                      size: 25,
                      color: primaryFontColor,
                    ),
                  ),
                ),
              ],
              title: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(170, 196, 196, 196),
                  radius: 18,
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    size: 25,
                    color: primaryFontColor,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _getbody(),
            )
          ],
        ),
      ),
    );
  }
}

Widget _getbody() {
  return Column(
    children: [
      Row(
        children: [
          Image.asset(
            'assets/icons/thunder.png',
            width: 33,
            height: 33,
          ),
          Image.asset(
            'assets/icons/thunder.png',
            width: 33,
            height: 33,
          ),
          Image.asset(
            'assets/icons/thunder.png',
            width: 33,
            height: 33,
          ),
          Image.asset(
            'assets/icons/thunder.png',
            width: 33,
            height: 33,
          ),
        ],
      )
    ],
  );
}
