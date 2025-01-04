import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '20',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Rabu',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Jan 2025',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.notifications),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // INPUT
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
            child: TextFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  labelText: 'Search Here..',
                  filled: true,
                  fillColor: Colors.white,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                )),
          ),

          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(children: [
                  // Banner
                  Container(
                    height: 132,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Read Smarter, Dream Bigger",
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Get Started'))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: 8,
                          child: SvgPicture.asset(
                            'assets/images/banner-hero.svg',
                            height: 105,
                            width: 105,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // author
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Books For You",
                            ),
                            Row(
                              spacing: 2,
                              children: [
                                Text(
                                  "View All",
                                ),
                                const Icon(Icons.arrow_right_rounded)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            itemExtent: 140,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            children: <Widget>[
                              BookCard(),
                              BookCard(),
                              BookCard(),
                              BookCard()
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 140,
                width: 110,
                child: Image.network(
                  'https://images.unsplash.com/photo-1652571305415-03416a741883?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('data')
          ],
        )
      ],
    );
  }
}
