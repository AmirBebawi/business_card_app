import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff000000),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(700),
                child: Image.asset(
                  'assets/1.jpg',
                  width: 200,
                ),
              ),
              const Text(
                'Amir Bebawi ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                ),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'Pacifico',
                ),
              ),
              const Divider(
                height: 20,
                endIndent: 30,
                indent: 30,
              ),
              Card(

                margin: const EdgeInsetsDirectional.only(
                  start: 20,
                  end: 20,
                  top: 10,
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: const Icon(
                    color: Colors.black,
                    Icons.phone,
                    size: 32,
                  ),
                  title: Text(
                    '(+02) 01288667913',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              Card(

                margin:const EdgeInsets.all(20),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    size: 32,
                  ),
                  title: Text(
                    'amirbebawi22@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
