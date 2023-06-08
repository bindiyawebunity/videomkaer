import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:videomaker/screen/searchPage.dart';
import 'package:videomaker/screen/setting_page.dart';
import '../model/TextStyle.dart';
import '../model/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String finalUserName;
  late String finalEmail;
  late String finalPhoneNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    var userName = prefs.getString('UserName');
    var email = prefs.getString('Email');
    var phoneNumber = prefs.getString('PhoneNumber');

    setState(() {
      finalUserName = userName!;
      finalEmail = email!;
      finalPhoneNumber = phoneNumber!;
    });
  }

  TextEditingController search = TextEditingController();
  var nameValue = "Username";

  List mainImage = ["assets/homePage2.png", "assets/homePage.png"];
  List mainName = [
    "Couple Dance",
    "Dream Place",
  ];
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
      appBar: AppBar(
        backgroundColor: ColorFile.backGroundColor,
        leading: const Icon(Icons.save),
        title: Center(
            child: Text(
          "Reel Maker",
          style: TextStyleFile.homePageTitle,
        )),
      ),
      endDrawer: Drawer(
        shadowColor: Colors.grey,
        backgroundColor: ColorFile.backGroundColor,
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        finalUserName,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: Text(
                        finalEmail,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        finalPhoneNumber,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person, color: Colors.white)),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingPage(),
                          ));
                    },
                    icon: const Icon(Icons.settings, color: Colors.white)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ));
                  },
                  child: const Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock, color: Colors.white)),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Log Out",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      ));
                },
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
              SizedBox(
                height: 200,
                width: 350,
                child: GridView.builder(
                  itemCount: mainName.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: 230,
                          width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                mainImage[index],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 140.0),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFF040404).withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, top: 8),
                              child: Text(
                                mainName[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Relax",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 20,
                        color: ColorFile.textColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 215.0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See all',
                          style:
                              TextStyle(color: Color(0xFFE68A96), fontSize: 20),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 220,
                width: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: 240,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                image[index],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 180.0),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFF040404).withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 60.0, top: 15),
                              child: Text(
                                name[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sports",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 20,
                        color: ColorFile.textColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210.0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See all',
                          style:
                              TextStyle(color: Color(0xFFE68A96), fontSize: 20),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                width: 350,
                child: ListView.builder(
                  itemCount: name2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: 230,
                          width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                image2[index],
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 140.0),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFF040404).withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, top: 8),
                              child: Text(
                                name2[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
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
