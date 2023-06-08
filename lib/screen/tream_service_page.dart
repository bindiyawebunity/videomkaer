import 'package:flutter/material.dart';
import '../model/color.dart';

class TermsOfServicePage extends StatefulWidget {
  const TermsOfServicePage({Key? key}) : super(key: key);

  @override
  State<TermsOfServicePage> createState() => _TermsOfServicePageState();
}

class _TermsOfServicePageState extends State<TermsOfServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorFile.backGroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          color: Colors.white,
        ),
        title: const Center(
          child: Text(
            "Terms Of Service",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: ColorFile.backGroundColor,
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Last Revised: December 25, 2021",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your privacy is important to us. It is Brainstorming's policy to respect your privacy regarding any information we may collect from you across our website, and other sites we own and operate.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we’re collecting it and how it will be used.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "We only retain collected information for as long as necessary to provide you with your requested service. We don’t share any personally identifying information publicly or with third-parties, except when required to by law.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "A terms and conditions agreement outlines the website administrator’s rules regarding user behavior and provides information about the actions the website administrator can and will perform. Essentially, your terms and conditions text is a contract between your website and its users. In the event of a legal dispute, arbitrators will look at it to determine whether each party acted within their rights. Creating the best terms and conditions page possible will protect your business from the following",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
