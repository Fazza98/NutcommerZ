import 'package:flutter/material.dart';
import 'package:nut_ui/screens/reusable_widgets/noti_card.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List notifications = [
    {
      'image':
          'https://imgd.aeplcdn.com/1200x900/n/cw/ec/54399/exterior-right-front-three-quarter-10.jpeg?q=75',
      'status': 'placed',
      'name': 'Swift 2022',
      'date': '20 dec 2022'
    },
    {
      'image':
          'https://stimg.cardekho.com/images/carexteriorimages/630x420/Maruti/Alto-800/7072/1650542631570/front-left-side-47.jpg',
      'status': 'Packed',
      'name': 'Maruthi Alto 800',
      'date': '22 dec 2022'
    },
    {
      'image':
          'https://static.autox.com/uploads/2022/03/2022-Maruti-Suzuki-Baleno-review1.jpg',
      'status': 'placed',
      'name': 'Suzuki Baleno',
      'date': '30 nov 2022'
    },
    {
      'image':
          'https://cdni.autocarindia.com/ExtraImages/20210406010759_2020_Honda_City_LT_1.jpg',
      'status': 'Out for Delivery',
      'name': 'Honda City 2022',
      'date': '20 dec 2022'
    },
    {
      'image':
          'https://stimg.cardekho.com/images/carexteriorimages/930x620/Honda/Honda-Brio/5465/1544785993754/front-left-side-47.jpg',
      'status': 'Arrived',
      'name': 'Honda Brio',
      'date': '20 dec 2022'
    },
    {
      'image':
          'https://stimg.cardekho.com/images/carexteriorimages/930x620/Honda/Honda-Brio/5465/1544785993754/front-left-side-47.jpg',
      'status': 'Arrived',
      'name': 'Honda Brio',
      'date': '20 dec 2022'
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.right,
          ),
          leadingWidth: 30,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return NotiCard(
              name: notifications[index]['name'],
              image: notifications[index]['image'],
              date: notifications[index]['date'],
              status: notifications[index]['status'],
            );
          },
        )
        // Container(
        //   // decoration: new BoxDecoration(boxShadow: [
        //   //   new BoxShadow(
        //   //     color: Color.fromARGB(255, 215, 212, 212),
        //   //     blurRadius: 15.0,
        //   //   ),
        //   // ]),
        //   height: double.infinity,
        //   width: double.infinity,
        //   child: ListView.builder(
        //     scrollDirection: Axis.vertical,
        //     shrinkWrap: true,
        //     itemCount: 10,
        //     itemBuilder: (context, index) {
        //       return SizedBox(
        //         width: 360,
        //         height: 88,
        //         child: Card(
        //           // shape: RoundedRectangleBorder(
        //           //     borderRadius: BorderRadius.all(Radius.circular(10))),
        //           elevation: 02,
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Image.asset(
        //                 'assets/images/iphone.png',
        //                 height: 60,
        //                 width: 60,
        //                 fit: BoxFit.fitWidth,
        //               ),
        //               // Text('Apple Iphone 15',
        //               //     style: TextStyle(
        //               //       fontFamily: 'Inter',
        //               //       fontSize: 13,
        //               //     )),
        //               // SizedBox(
        //               //   height: 5,
        //               // ),
        //               // Text('MRP: ₹ 79,000.00',
        //               //     style: TextStyle(
        //               //       fontFamily: 'Inter',
        //               //       fontSize: 10,
        //               //     ))
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        // body: ListView.builder(
        //   // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   //   crossAxisCount: 2,
        //   //   childAspectRatio: 0.9,
        //   //   crossAxisSpacing: 2,
        //   //   mainAxisSpacing: 2,
        //   // ),
        //   itemCount: products.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return CatCard(
        //       productName: products[index]['name'],
        //       price: products[index]['price'],
        //       image: products[index]['image'],
        //     );
        //   },
        // ),
        );
  }
}
