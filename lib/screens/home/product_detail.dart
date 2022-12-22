import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int index = 0;
  bool fullScreen = false;
  final List<String> _imageUrl = [
    'https://assets.gqindia.com/photos/6343bda4bac0ed8f5bc20d96/4:3/w_1440,h_1080,c_limit/iPhone-14-Pro-Max-Review_02.jpg',
    'https://www.apple.com/v/iphone-14-pro/c/images/meta/iphone-14-pro_overview__e414c54gtu6a_og.png?202212150113',
    'https://www.dpreview.com/files/p/articles/6110937480/7F3F3C54-E764-4430-86D2-87AEF029CAA2.jpeg',
    'https://www.popphoto.com/uploads/2022/09/07/iphone14pro-04-scaled.jpeg',
    'https://assets.promediateknologi.com/crop/0x0:700x557/x/photo/2022/08/29/3921178547.jpeg',
  ];
  final List<Color> _variantColors = [
    Colors.green,
    Colors.purple,
    Colors.white,
    Colors.red,
    Colors.black,
  ];

  final List<String> _storageConfig = [
    '64 GB',
    '128 GB',
    '256 GB',
    '512 GB',
    '1 TB',
    '2 TB'
  ];
  List<Widget> _widgetList = [
    const ProductDescription(),
    const ProductReview()
  ];
  PageController pageViewController = PageController();
  int _selectedColorIndex = 0;
  int _selectedPageIndex = 0;
  String _selectedStorageConfig = '';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text('Apple iPhone 13'),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: fullScreen
          ? WillPopScope(
              onWillPop: () async {
                setState(() {
                  fullScreen = false;
                });
                return false;
              },
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: InteractiveViewer(
                          panEnabled: false, // Set it to false
                          boundaryMargin: const EdgeInsets.all(100),
                          minScale: 0.5,
                          maxScale: 3,
                          child: Image.network(
                            _imageUrl[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: size.height * 0.825,
                      enlargeCenterPage: false,
                      autoPlay: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: false,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 1,
                      onPageChanged: (i, _) {
                        setState(() {
                          index = i;
                        });
                      },
                    ),
                  ),
                  Center(
                    child: CarouselIndicator(
                      count: 5,
                      index: index,
                      width: 5,
                      height: 5,
                      color: Colors.grey,
                      activeColor: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: InkWell(
                        onTap: () => setState(() {
                          fullScreen = true;
                        }),
                        child: CarouselSlider.builder(
                          itemCount: 5,
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              margin: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.network(
                                _imageUrl[index],
                                fit: BoxFit.contain,
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: size.height * 0.3,
                            enlargeCenterPage: false,
                            autoPlay: false,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 1,
                            onPageChanged: (i, _) {
                              setState(() {
                                index = i;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: CarouselIndicator(
                        count: 5,
                        index: index,
                        width: 5,
                        height: 5,
                        color: Colors.grey,
                        activeColor: Colors.black,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20.0),
                      child: Text(
                        'Apple iphone 13 (Green 128 GB)',
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '\u{20B9}1,29,000',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              '\u{20B9}1,59,000',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            '4.6',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            //TODO: If rating is higher than 4.5 and lower than 5, set 4.5 stars in the star rating
                            padding: const EdgeInsets.only(left: 8.0),
                            child: RatingBar(
                              ignoreGestures: true,
                              itemSize: 25.0,
                              initialRating: 4.5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: const Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                ),
                                half: const Icon(
                                  Icons.star_half_outlined,
                                  color: Colors.amberAccent,
                                ),
                                empty: const Icon(
                                  Icons.star_outline_outlined,
                                  color: Colors.amberAccent,
                                ),
                              ),
                              onRatingUpdate: (_) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 15.0),
                      child: Text(
                        'Colours',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: size.width,
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  _selectedColorIndex = index;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 55,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    //borderRadius: BorderRadius.circular(50),
                                    // color: _variantColors[index],
                                    border: Border.all(
                                      strokeAlign: StrokeAlign.center,
                                      color: _selectedColorIndex == index
                                          ? Colors.blue
                                          : Colors.transparent,
                                      width: 2,
                                    ),
                                    shape: BoxShape.circle),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _variantColors[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 15.0),
                      child: Text(
                        'Storage',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 30.0, 0.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: _storageConfig.map((item) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _selectedStorageConfig = item;
                                    });
                                  },
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 223, 223, 223),
                                    ),
                                    side: MaterialStateProperty.all(
                                      BorderSide(
                                          color: _selectedStorageConfig == item
                                              ? Colors.blue
                                              : Colors.grey),
                                    ),
                                    foregroundColor: MaterialStateProperty.all(
                                      _selectedStorageConfig == item
                                          ? Colors.blue
                                          : Colors.black,
                                    ),
                                  ),
                                  child: Text(item),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      width: size.width,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 226, 226, 226),
                          ),
                          minimumSize: MaterialStateProperty.all(
                              const Size.fromHeight(50)),
                          side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.black),
                          ),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        child: const Text('Add To Cart'),
                      ),
                    ),
                    Container(
                      width: size.width,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              const Size.fromHeight(50)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        child: const Text('Buy Now'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              if (_selectedPageIndex == 1) {
                                setState(() {
                                  _selectedPageIndex--;
                                });
                              }
                            },
                            child: Container(
                              width: 80,
                              padding: const EdgeInsets.only(bottom: 5.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: _selectedPageIndex == 0
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 3.0),
                                ),
                              ),
                              child: const Text(
                                'Description',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (_selectedPageIndex == 0) {
                                setState(() {
                                  _selectedPageIndex++;
                                });
                              }
                            },
                            child: Container(
                              width: 80,
                              padding: const EdgeInsets.only(bottom: 5.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: _selectedPageIndex == 1
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 3.0),
                                ),
                              ),
                              child: const Text(
                                'Reviews',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 30.0,
                      endIndent: 30.0,
                      height: 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: _widgetList[_selectedPageIndex],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class ProductReview extends StatelessWidget {
  const ProductReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 200,
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,');
  }
}
