import 'package:fastfoodshopping/main.dart';
import 'package:fastfoodshopping/recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int typeIndexFood = 0;
  List allCategory = [
    'hamburger',
    'pasta',
    'omelet',
    'steak',
    'pastaDinner',
    'pizzaDinner',
    'sandwich',
    'fruitSalad',
    'chicken',
    'chickenDinner',
    'bread',
    'hamburgerDinner'
  ];
  List food = [
    [
      'hamburger',
      'pasta',
      'omelet',
      'steak',
      'pastaDinner',
      'pizzaDinner',
      'sandwich',
      'fruitSalad',
      'chicken',
      'chickenDinner',
      'bread',
      'hamburgerDinner'
    ],
    [
      'bread',
      'omelet',
      'sandwich',
      'fruitSalad',
    ],
    [
      'hamburger',
      'pasta',
      'chicken',
      'steak',
    ],
    [
      'hamburgerDinner',
      'chickenDinner',
      'pizzaDinner',
      'pastaDinner',
    ],
  ];
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    List typeFoods = [
      'All',
      'Breakfast',
      'Lunch',
      'Dinner',
    ];
    List foodName = typeIndexFood == 0 ? allCategory : food;
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      appBar: AppBar(
        title: const Text(
          "McDonald's",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        backgroundColor: themeData.colorScheme.primary,
        foregroundColor: themeData.colorScheme.onPrimary,
        actions: const [
          Icon(CupertinoIcons.line_horizontal_3),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                'Popular category',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: themeData.colorScheme.onBackground,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                      itemCount: typeFoods.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                typeIndexFood = index;
                              });
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: typeIndexFood == index
                                      ? themeData.colorScheme.surface
                                      : themeData.colorScheme.onSurface,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius:
                                          typeIndexFood == index ? 5 : 0,
                                      color: typeIndexFood == index
                                          ? themeData.colorScheme.surface
                                              .withOpacity(1)
                                          : Colors.transparent,
                                      offset: typeIndexFood == index
                                          ? const Offset(1, 1)
                                          : const Offset(0, 0),
                                    )
                                  ]),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Text(
                                    typeFoods[index],
                                    style: TextStyle(
                                      color: typeIndexFood == index
                                          ? themeData.colorScheme.onSurface
                                          : themeData.colorScheme.onBackground,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: themeData.colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                String foodname = food[typeIndexFood][index].toString();
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RecipeScreen())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: themeData.colorScheme.onSurface,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                CupertinoIcons.heart,
                                size: 20,
                                color: themeData.colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/${food[typeIndexFood][index]}.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Text(
                          foodname,
                          style: const TextStyle(
                              fontSize: 18, color: primaryFontColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '60 min',
                              style: TextStyle(
                                fontSize: 15,
                                color: secondaryFontColor.withOpacity(0.5),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.star_fill,
                                  color: themeData.colorScheme.primary,
                                  size: 12,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      color:
                                          secondaryFontColor.withOpacity(0.5),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
                  childCount:
                      typeIndexFood == 0 ? foodName.length : foodName.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 285,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 64,
            ),
          )
        ],
      ),
    );
  }
}
