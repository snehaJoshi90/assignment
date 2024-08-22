import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';
import 'package:assignment/screens/shop/widgets/banner_widget.dart';
import 'package:assignment/screens/shop/widgets/exclusive_offer_list.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Icon(Icons.account_circle),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/location.png',
                    height: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    'Dhaka, Banassre',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4C4F4D)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                controller: searchController,
                onTapOutside: (e) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  hintText: 'Search Store',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  fillColor: Color(0xffF2F3F2),
                  filled: true,
                ),
              ),
              Container(height: 150, child: BannerWidget()),
              CustomText('Exclusive Offer',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24),),
              ExclusiveOfferList(),
            ],
          ),
        ),
      ),
    );
  }
}
