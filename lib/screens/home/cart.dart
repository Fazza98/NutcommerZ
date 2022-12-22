import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nut_ui/screens/home/base.dart';
import 'package:nut_ui/screens/home/home.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Map<String, String>> _listOfProducts = [
    {
      "ProductName": "Apple Iphone13 (128 GB)",
      "Quantity": "1",
      "Price": "79,990"
    },
    {
      "ProductName": "Apple Iphone13 (128 GB)",
      "Quantity": "1",
      "Price": "11,79,990"
    },
    {
      "ProductName": "Apple Iphone13 (128 GB)",
      "Quantity": "1",
      "Price": "79,990"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Cart',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '2 items',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(),
                  secondaryBackground: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: const EdgeInsets.only(right: 25.0),
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.delete_outlined,
                        color: Colors.white,
                        size: 34,
                      ),
                    ),
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/iphone.png',
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Apple Iphone 13 (128 GB) Blue',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Text(
                                  '\u{20B9}1,29,000',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                const Text(
                                  'In Stock',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text('4.9 '),
                                    RatingBar(
                                      ignoreGestures: true,
                                      itemSize: 15.0,
                                      initialRating: 4.5,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      ratingWidget: RatingWidget(
                                        full: const Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                        half: const Icon(
                                          Icons.star_half_outlined,
                                          color: Colors.grey,
                                        ),
                                        empty: const Icon(
                                          Icons.star_outline_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onRatingUpdate: (_) {},
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black54),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.zero,
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                constraints:
                                                    const BoxConstraints(),
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.remove,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                            const Text('10'),
                                            IconButton(
                                              padding: EdgeInsets.zero,
                                              constraints:
                                                  const BoxConstraints(),
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add,
                                                size: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(left: 10.0),
                                      //   child: ElevatedButton(
                                      //     onPressed: () {},
                                      //     child: const Text('Buy Now'),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        HomePage.index = 0;
                      });
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text('Add More Items'),
                  ),
                  const Text(
                    'Swipe left to Remove',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: SizedBox(
                child: DataTable(
                  //decoration: BoxDecoration(),
                  showBottomBorder: true,
                  columnSpacing: size.width * 0.05,
                  columns: const [
                    DataColumn(label: Text('Product')),
                    DataColumn(numeric: true, label: Text('Quantity')),
                    DataColumn(numeric: true, label: Text('Price')),
                  ],
                  rows: _listOfProducts
                      .map(
                        (products) => DataRow(
                          cells: [
                            DataCell(
                              Text(
                                products['ProductName'] ?? '',
                              ),
                            ),
                            DataCell(
                              Text(
                                products['Quantity'] ?? '',
                              ),
                            ),
                            DataCell(
                              Text(
                                products['Price'] ?? '',
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                  Text('Total Price:'),
                  Text(
                    '\u{20B9}1,29,000',
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 25),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Proceed to checkout'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
