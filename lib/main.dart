import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'gender_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GenderProvider>(
      create: (context) => GenderProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Provider Example',
          home: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Provider Example',
                ),
              ),
              body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Consumer<GenderProvider>(
                            builder: (
                          context,
                          genderProvider,
                          _,
                        ) =>
                                Text('Gender Picker',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: genderProvider.titleColor,
                                    ))),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Consumer<GenderProvider>(builder: (
                                context,
                                genderProvider,
                                _,
                              ) {
                                return GestureDetector(
                                  onTap: () {
                                    genderProvider.isMale = true;
                                  },
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: genderProvider.colorMale,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/icon_male.png',
                                          height: 80,
                                          color: genderProvider.colorMale,
                                        ),
                                        Text(
                                          'Male',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: genderProvider.colorMale,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Consumer<GenderProvider>(builder: (
                                context,
                                genderProvider,
                                _,
                              ) {
                                return GestureDetector(
                                  onTap: () {
                                    genderProvider.isMale = false;
                                  },
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: genderProvider.colorFemale,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/icon_female.png',
                                          height: 80,
                                          color: genderProvider.colorFemale,
                                        ),
                                        Text(
                                          'Female',
                                          style: TextStyle(
                                            color: genderProvider.colorFemale,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ])))),
    );
  }
}
