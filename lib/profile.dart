import 'package:fastfoodshopping/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List profilItem = ['profile', 'setting', 'favorit', 'activities'];
    List iconList = [
      CupertinoIcons.person_fill,
      CupertinoIcons.settings_solid,
      CupertinoIcons.heart_fill,
      CupertinoIcons.clock_fill,
    ];

    // ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(144, 196, 196, 196),
                    borderRadius: BorderRadius.circular(50)),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Mahdi Nasseh'.toUpperCase(),
                style: const TextStyle(
                    color: primaryFontColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: profilItem.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Icon(
                              iconList[index],
                              size: 22,
                              color: mainColor,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                child: Text(
                              profilItem[index].toUpperCase(),
                              style: const TextStyle(
                                  color: primaryFontColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.right_chevron,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
