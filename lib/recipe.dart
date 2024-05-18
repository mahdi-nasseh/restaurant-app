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
              automaticallyImplyLeading: false,
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
  List flist = ["cheese", "meat", "spices", "sausage", "mint", "garlic"];
  List fweight = ["100g", "250g", "20g", "200g", "10g", "5g"];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/icons/thunder.png',
            width: 33,
            height: 33,
          ),
          Image.asset(
            'assets/icons/meat.png',
            width: 33,
            height: 33,
          ),
          Image.asset(
            'assets/icons/fire.png',
            width: 33,
            height: 33,
          ),
          Image.asset(
            'assets/icons/star.png',
            width: 33,
            height: 33,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '120',
            style: TextStyle(color: primaryFontColor.withOpacity(0.6)),
          ),
          Text(
            '150',
            style: TextStyle(color: primaryFontColor.withOpacity(0.6)),
          ),
          Text(
            '10',
            style: TextStyle(color: primaryFontColor.withOpacity(0.6)),
          ),
          Text(
            '4.4',
            style: TextStyle(color: primaryFontColor.withOpacity(0.6)),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
        child: Text(
          'ingredients',
          style: TextStyle(
              color: primaryFontColor,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              ...List.generate(flist.length, (index) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 5,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/${flist[index]}.png',
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        '${fweight[index]}',
                        style: const TextStyle(color: primaryFontColor),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'This recipe takes time. Before you start cooking, you’ll need to have your active, mature sourdough starter ready to go. It’s mature when you’ve been feeding it regularly in the days leading up to starting this recipe. We suggest you make the starter 3 to 4 days before cooking. If you’re not up for making a starter, you can also ask your local bakery if they’ll share a bit of their starter with you. While this recipe makes 10 ounces (250 grams) of levain, you will only need 7 ounces (200 grams) for your final mix.',
          style: TextStyle(
            color: primaryFontColor.withOpacity(0.5),
            fontSize: 14,
          ),
        ),
      ),
    ],
  );
}
