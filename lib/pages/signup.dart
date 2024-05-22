

// ignore_for_file: unused_import, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple[200],
          child: const Icon(Icons.home,),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              const Positioned(
                left: 170, top: 20,
               child: Text('S I G N up ',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myfont',fontSize: 30),)
               ),
              Positioned(
                  child: Image.asset(
                'assets/images/signup_top.png',
                height: 110,
              )),
              Positioned(
                  bottom: 0,
                  child: Image.asset('assets/images/main_bottom.png',
                      height: 110)
                      ),
              Positioned(
                  top: 40,
                  left: 70,
                  child: Image.asset(
                    'assets/images/mobile-pages-03-removebg-preview.png',
                    height: 340,
                  )
                  ),
              Positioned(
                bottom: 30,
                left: 40,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.purple[100],
                            labelText: 'Your Email :',
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(33))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.purple[100],
                            hintText: 'Password :',
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: const Icon(Icons.visibility),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(33))),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[900]),
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                      ),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Already have an Account ?',
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 20),
                            ))
                      ]),

                  SizedBox(width: 299,
                  child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 0.8,
                              color: Colors.purple[900],
                            )),
                            Text(
                              " OR ",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.purple[900],
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 0.6,
                              color: Colors.purple[900],
                            )),
                          ],
                        ),),
                    const SizedBox(height: 20,),
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( 
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 0.7),
                      shape: BoxShape.circle,),
                  child: SvgPicture.asset(
                    'assets/icons/facebook.svg',
                    height: 30,
                    color: Colors.purple[900]
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12,right: 12,),
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      border: Border.all(color:  Colors.blue, width: 0.7),
                      shape: BoxShape.circle,),
                  child: SvgPicture.asset(
                    'assets/icons/twitter.svg',color: Colors.purple[900],
                    height: 30,
                  ),
                ),
                Container(
                  
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 0.7),
                      shape: BoxShape.circle,),
                  child: SvgPicture.asset(
                    'assets/icons/google-plus.svg',color: Colors.purple[900],
                    height: 30,
                  
                  ),
                ),
                    
              ],
            ),

                    
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
