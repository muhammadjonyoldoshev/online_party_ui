import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/im_party.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
             ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:   [
                      const SizedBox(height: 100,),
                      FadeInUp(
                        duration: const Duration(milliseconds: 600),
                        child: const Text(
                          "Find the best parties near you.",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              height: 1.1,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        child: const Text(
                          "Let us find you a party for your interest",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
              //_isLogin?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeInUp(
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red
                      ),
                      child: const Center(
                        child: Text(
                          "Google",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width /2.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}