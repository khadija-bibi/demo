import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homePageProvider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ChangeNotifierProvider<HomePageProvider>(
              create: (context) => HomePageProvider(),
              child: Consumer<HomePageProvider>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: (InputDecoration(
                              hintText: "Enter a number",
                            )),

                            onChanged:(val){
                        provider.checkSquare(int.parse(val));
                        },
                        ),
                      ),

                      Text(provider.message.toString(),
                      )
                    ],
                  );
                },
              )),
        ),
      ),
    );
  }
}
