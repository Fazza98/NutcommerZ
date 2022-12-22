import 'package:flutter/material.dart';
import 'package:nut_ui/screens/home/edit_profile.dart';
import 'package:nut_ui/screens/home/product_detail.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      // appBar: AppBar(
      //   leadingWidth: 1,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Image.asset('assets/images/nut.png', fit: BoxFit.cover),
      //   automaticallyImplyLeading: false,
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.search),
      //       onPressed: () {},
      //       color: const Color(0xFF000000),
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.notifications),
      //       onPressed: () {},
      //       color: Colors.black,
      //     ),
      //     // IconButton(
      //     //   icon: Icon(
      //     //     Icons.notifications,
      //     //     color: Color.fromARGB(255, 1, 1, 1),
      //     //   ),
      //     //   onPressed: () {
      //     //     // do something
      //     //   },
      //     // )
      //   ],
      //   // Padding(
      //   //     padding: EdgeInsets.only(right: 20.0),
      //   //     child: GestureDetector(
      //   //       onTap: () {},
      //   //       child: Icon(
      //   //         Icons.search_rounded,
      //   //         color: Colors.black,
      //   //         size: 26,
      //   //       ),
      //   //     )),
      //   // Padding(
      //   //     padding: EdgeInsets.only(right: 20.0),
      //   //     child: GestureDetector(
      //   //       onTap: () {},
      //   //       child: Icon(
      //   //         Icons.notifications,
      //   //         color: Colors.black,
      //   //       ),
      //   //     )),
      // ),
      body: ListView(
        children: [
          SizedBox(height: size.height * 0.04),
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              // profile image
              SizedBox(
                width: 130,
                height: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(size.width),
                  child: Image.network(
                    'https://i.pinimg.com/originals/3d/d8/3f/3dd83fc6cfce54d3ad2bcc992cd5ed18.jpg',
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // edit button
              Positioned(
                bottom: 0,
                right: size.width * 0.36,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(05),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.edit_outlined,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Ironman',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            dense: false,
            leading: const Icon(
              Icons.edit_outlined,
              color: Colors.black,
            ),
            title: const Text(
              'Edit Profile',
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Editprof(),
                ),
              );
            },
            // {
            //   ScaffoldMessenger.of(context).clearSnackBars();
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     const SnackBar(
            //       content: Text('Edit profile clicked !'),
            //       behavior: SnackBarBehavior.floating,
            //     ),
            //   );
            // },
          ),
          const Divider(
            color: Color(0xffEBE3E3),
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            title: const Text('Address'),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            onTap: () {},
            // onTap: () {
            //   ScaffoldMessenger.of(context).clearSnackBars();
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     const SnackBar(
            //       content: Text('Edit profile clicked !'),
            //       behavior: SnackBarBehavior.floating,
            //     ),
            //   );
            // },
          ),
          const Divider(
            color: Color(0xffEBE3E3),
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.content_paste,
              color: Colors.black,
            ),
            title: const Text('Order History'),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            onTap: () {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Edit profile clicked !'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
          const Divider(
            color: Color(0xffEBE3E3),
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.help_outline,
              color: Colors.black,
            ),
            title: const Text('FAQ'),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            onTap: () {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Edit profile clicked !'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
          const Divider(
            color: Color(0xffEBE3E3),
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline_rounded,
              color: Colors.black,
            ),
            title: const Text('About Us'),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            onTap: () async {
              await launchUrl(
                Uri.parse('https://nutz.in'),
              );
              // Get.back();
              // Get.toNamed("/dashboard");
            },
          ),
          const Divider(
            color: Color(0xffEBE3E3),
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: const Text('Log Out'),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            ),
            onTap: () {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Edit profile clicked !'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
