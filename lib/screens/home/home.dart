import 'package:flutter/material.dart';
import 'package:nut_ui/screens/home/product_detail.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' Top Sellers ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 148,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 119,
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Product(),
                        ),
                      ),
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 02,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/iphone.png',
                              height: 100,
                              width: 60,
                              fit: BoxFit.contain,
                            ),
                            const Text('Apple Iphone 13',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 13,
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('MRP: ₹ 79,000.00',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 10,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 190,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 190,
                    width: 340,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/banner.png',
                              ),
                              fit: BoxFit.cover,
                            )),
                        // child: Image.asset(
                        //   'assets/images/banner.png',
                        //   height: 182,
                        //   width: 400,
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '  New Arrivals',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 148,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 148,
                    width: 119,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      elevation: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/iphone.png',
                            height: 100,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                          const Text('Apple Iphone 13',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('MRP: ₹ 79,000.00',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 148,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200,
                    width: 119,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/iphone.png',
                            height: 100,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                          const Text('Apple Iphone 14',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('MRP: ₹ 79,000.00',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 148,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200,
                    width: 119,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/iphone.png',
                            height: 100,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                          const Text('Apple Iphone 14',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('MRP: ₹ 79,000.00',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
