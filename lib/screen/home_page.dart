import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:videomaker/screen/login_page.dart';
import 'package:videomaker/screen/setting_page.dart';
import 'package:videomaker/screen/use_template_page.dart';
import 'package:videomaker/screen/video_edit_page.dart';
import '../model/TextStyle.dart';
import '../model/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? finalUserName;
  String? finalEmail;
  String? finalPhoneNumber;

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
      finalUserName = userName;
      finalEmail = email;
      finalPhoneNumber = phoneNumber;
    });
  }

  TextEditingController search = TextEditingController();
  // var nameValue = "Username";

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
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.save_alt,
              color: ColorFile.iconColor,
            )),
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
                      leading: Icon(
                        Icons.person,
                        color: ColorFile.iconColor,
                      ),
                      title: Text(
                        finalUserName ?? 'Username not available',
                        style: TextStyle(
                          color: ColorFile.textColor,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: ColorFile.iconColor,
                      ),
                      title: Text(
                        finalEmail ?? 'Email not available',
                        style: TextStyle(color: ColorFile.textColor),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: ColorFile.iconColor,
                      ),
                      title: Text(
                        finalPhoneNumber ?? 'Phone number not available',
                        style: TextStyle(color: ColorFile.textColor),
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
                        icon: Icon(Icons.person, color: ColorFile.iconColor)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Profile",
                        style: TextStyle(color: ColorFile.textColor),
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
                    icon: Icon(Icons.settings, color: ColorFile.iconColor)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ));
                  },
                  child: Text(
                    "Setting",
                    style: TextStyle(color: ColorFile.textColor),
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
                    icon: Icon(Icons.lock, color: ColorFile.iconColor)),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: const Text(
                              'Exit App ?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 27),
                            ),
                            content: const SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text("Are you sure you want to exit?"),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("cancel")),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        // FirebaseAuth.instance.signOut();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage(),
                                            ));
                                      },
                                      child: const Text("Yes"))
                                ],
                              )
                            ]);
                      },
                    );
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(color: ColorFile.textColor),
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
                  showSearch(context: context, delegate: DataSearch());
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
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VideoEditPage(),
                            ));
                      },
                      child: Stack(
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
                                  color:
                                      const Color(0xFF040404).withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 25.0, top: 8),
                                child: Text(
                                  mainName[index],
                                  style: TextStyle(color: ColorFile.textColor),
                                ),
                              ),
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
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UseTemplatePage(),
                            ));
                      },
                      child: Stack(
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
                                  color:
                                      const Color(0xFF040404).withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 60.0, top: 15),
                                child: Text(
                                  name[index],
                                  style: TextStyle(color: ColorFile.textColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                style: TextStyle(color: ColorFile.textColor),
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

class DataSearch extends SearchDelegate<String> {
  final name = [
    "Journey",
    "Motivation",
    "Outfit",
    "Relax",
  ];

  final dance = [
    "Couple dance",
    "Romantic dance",
    "Sisters dance",
    "family dance",
    "Bro&sis dance",
    "Sports",
    "Dance",
    "Romantic",
    "Funny",
    "Animal",
    "Vlog",
    "Fashion"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Card(
          color: Colors.black,
          child: Center(
            child: Text(
              query,
              style: TextStyle(color: ColorFile.textColor),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =
        query.isEmpty ? name : dance.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: const Icon(
          Icons.trending_up,
        ),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: const TextStyle(color: Colors.grey))
            ])),
      ),
    );
  }
}
