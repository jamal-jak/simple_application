import 'package:flutter/material.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SizedBox(
        
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          
          children: [
                const Positioned(
                  left: 150,
                  top: 20,
                  child: Text(
                  
                'W E L C O M',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myfont',fontSize: 30),)
                  ),
           Positioned(
                top: 90,
                left: 30,
                child: Image.asset('assets/images/mobile-pages-02-removebg-preview.png',height: 400,)),
           Positioned(
                bottom: 0,
                child: 
                Image.asset('assets/images/main_bottom.png',height: 110,)),
           Positioned(
            child: Image.asset('assets/images/main_top.png',height: 130)
           ),
           Positioned(
              bottom: 0,
              left: 30,
              child: Column(
              
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[900]),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 120, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 29,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign up');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 104, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 29, color: Colors.grey[900]),
                  ),
                ),
                const SizedBox(height: 100,),
                const Text('Copyright  © 2024 by HOLAZOMI',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                const SizedBox(height: 10,)
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
