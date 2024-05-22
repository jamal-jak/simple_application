import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              const Positioned(
                  left: 170,
                  top: 20,
                  child: Text(
                    'L O G I N ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'myfont',
                        fontSize: 30),
                  )),
              Positioned(
                  top: 70,
                  left: 60,
                  child: Image.asset(
                    'assets/images/mobile-pages-01-removebg-preview.png',
                    height: 270,
                  )),
              Positioned(
                child: Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      'assets/images/main_top.png',
                      height: 150,
                    )),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/login_bottom.png',
                    height: 150,
                  )),
              Positioned(
                  bottom: 120,
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
                        margin: const EdgeInsets.only(bottom: 20, top: 20),
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
                          Navigator.pushNamed(context, '/Home');
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[900]),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),
                        child: const Text(
                          "login",
                          style:  TextStyle(fontSize: 29, color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Dont have an Account ?',
                            style: TextStyle(fontSize: 15),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign up');
                              },
                              child: const Text('sign up',
                                  style: TextStyle(fontSize: 20)))
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
