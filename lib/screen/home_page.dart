import 'package:flutter/material.dart';
import '../model/TextStyle.dart';
import '../model/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  List image = [
    "assets/homePage4.png",
    "assets/homePage3.png",
    "assets/homePage3.png",
    "assets/homePage3.png",
  ];
  List image2 = [
    "assets/homePage5.png",
    "assets/homePage6.png",
    "assets/homePage6.png"
  ];
  List name = ["Dance", "Party Time", "Party Time", "Party Time"];
  List name2 = ["Yoga", "Gym", "Gym"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey,
                        ),
                      ),
                      Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.save,
                              color: Colors.white,
                              size: 20,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Reel Maker",
                    style: TextStyleFile.homePageTitle,
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 20,
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: search,
                decoration: InputDecoration(
                    hintText: "Template name or category",
                    fillColor: Colors.grey,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Image(
                              fit: BoxFit.fill,
                              opacity: AlwaysStoppedAnimation(5),
                              image: AssetImage(
                                "assets/homePage2.png",
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 210.0),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFF040404).withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                )),
                            child: const Center(
                                child: Text(
                              "Couple Dance",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Image(
                              fit: BoxFit.fill,
                              opacity: AlwaysStoppedAnimation(5),
                              image: AssetImage(
                                "assets/homePage.png",
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 210.0),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFF040404).withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                )),
                            child: const Center(
                                child: Text(
                              "Dream Place",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "Relax",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 23,
                          color: ColorFile.textColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 290.0),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See all',
                            style: TextStyle(
                                color: Color(0xFFE68A96), fontSize: 23),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 280,
                width: 450,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: ( ){},
                            child: Stack(
                              children: [
                                Container(
                                  height: 250,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image(
                                      fit: BoxFit.fill,
                                      opacity: const AlwaysStoppedAnimation(5),
                                      image: AssetImage(
                                        image[index],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 210.0),
                                  child: Container(
                                    height: 40,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF040404)
                                            .withOpacity(0.5),
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        )),
                                    child: Center(
                                        child: Text(
                                      name[index],
                                      style: const TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    "Sports",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 23,
                        color: ColorFile.textColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 290.0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See all',
                          style:
                              TextStyle(color: Color(0xFFE68A96), fontSize: 23),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 280,
                width: 450,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Stack(
                              children: [
                                Container(
                                  height: 250,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image(
                                      fit: BoxFit.fill,
                                      opacity: const AlwaysStoppedAnimation(5),
                                      image: AssetImage(
                                        image2[index],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 210.0),
                                  child: Container(
                                    height: 40,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF040404)
                                            .withOpacity(0.5),
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        )),
                                    child: Center(
                                        child: Text(
                                      name2[index],
                                      style: const TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
