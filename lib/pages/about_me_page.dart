import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/new-avatar1.png'),
                    radius: 60.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Khaleel Mahdi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Mobile apps development | Flutter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.email, color: Colors.black),
                      title: const Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'khleelmhdi@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone_android, color: Colors.black),
                      title: const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        '+972 598 137 134',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.location_city, color: Colors.black),
                      title: const Text(
                        'Country',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Palestine, Gaza',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
