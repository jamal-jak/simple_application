// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[200],
        child: Icon(
          Icons.home,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'my Account',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    )),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Text('___________________________________________________________',
              style: TextStyle(
                color: Colors.amberAccent,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(' NOME :',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                Text('Jamal Ait Jak ',
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 33,
                        fontFamily: 'myfont')),
                SizedBox(
                  height: 22,
                ),
                Text('current level : ',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                Text(' beginner ',
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 33,
                        fontFamily: 'myfont')),
                SizedBox(
                  height: 22,
                ),
                Text('EMAIL  :',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.email,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'admin@aitjak.com',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 33,
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Center(
              child: Image.asset(
            'assets/images/Featured-Image-2.webp',
            height: 140,
          )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 0.7),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/icons/facebook.svg',
                    // ignore: deprecated_member_use
                    height: 30, color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 0.7),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/twitter.svg',
                  // ignore: deprecated_member_use
                  color: Colors.white,
                  height: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 0.7),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/google-plus.svg',
                  // ignore: deprecated_member_use
                  color: Colors.white,
                  height: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
