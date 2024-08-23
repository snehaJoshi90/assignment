import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';
import 'package:assignment/screens/product_details/widgets/product_images.dart';
import 'package:assignment/screens/product_details/widgets/expansion_list.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  double value = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.file_upload_outlined))
        ],
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 250, child: ProductImages()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          'Naturel Red Apple',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              size: 24,
                            ))
                      ],
                    ),
                    CustomText(
                      "1kg, Price",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xff7C7C7C)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              size: 24,
                            )),
                        Container(
                          height: 45,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffE2E2E2)),
                              borderRadius: BorderRadius.circular(15)),
                          child: CustomText('1',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 24)),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 24,
                              color: Color(0xff53B175),
                            )),
                        const Spacer(),
                        CustomText(
                          "\$4.99",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                      ],
                    ),
                    ExpansionList(),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          'Nutrition',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffF2F3F2)),
                          child: CustomText('100gr',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 9,
                                  color: Color(0xff7C7C7C))),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          'Review',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        const Spacer(),


                    RatingStars(
                      value: value,
                      onValueChanged: (v) {
                        //
                        setState(() {
                          value = v;
                        });
                      },
                      starBuilder: (index, color) => Icon(
                        Icons.star,
                        color: color,
                      ),
                      starCount: 5,
                      starSize: 20,
                      valueLabelColor: const Color(0xff9b9b9b),
                      valueLabelTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      valueLabelRadius: 10,
                      maxValue: 5,
                      starSpacing: 2,
                      maxValueVisibility: true,
                      valueLabelVisibility: false,
                      //  animationDuration: Duration(milliseconds: 1000),
                      valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      valueLabelMargin: const EdgeInsets.only(right: 8),
                      starOffColor: const Color(0xffe7e8ea),
                      starColor: Color(0xffF3603F),
                    ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                      ],
                    ),
                    SizedBox(height: 60,)
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 49),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff53B175),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
              ),
              onPressed: () {},
              child: CustomText(
                'Add To Basket',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              )),
        )
      ]),
    );
  }
}
