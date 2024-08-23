import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';
import 'package:assignment/screens/product_details/product_detail_screen.dart';

class GroceriesAnotherList extends StatefulWidget {
  const GroceriesAnotherList({super.key});

  @override
  State<GroceriesAnotherList> createState() => _GroceriesAnotherListState();
}

class _GroceriesAnotherListState extends State<GroceriesAnotherList> {
  List<Map<String, dynamic>> offerList = [
    {
      'title': 'Beef Bone',
      'price': '\$4.99',
      'qty': '7 pcs',
      'image': 'assets/beef.png',
    },
    {
      'title': 'Broiler Chicken',
      'price': '\$4.99',
      'qty': '1kg',
      'image': 'assets/chicken.png',
    },
    {
      'title': 'Organic Bananas',
      'price': '\$4.99',
      'qty': '7 pcs',
      'image': 'assets/bananas.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 200,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: offerList.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){

                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffE2E2E2)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            offerList[index]['image'],
                            height: 60,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          offerList[index]['title'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        CustomText(
                          offerList[index]['qty'],
                          textAlign: TextAlign.left,
                        ),
                        CustomText('Price'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              offerList[index]['price'],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              height: 43,
                              width: 40,
                              child: FloatingActionButton(
                                splashColor: Colors.transparent,
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                backgroundColor: Color(0xff53B175),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
