import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';

class GroceriesList extends StatefulWidget {
  const GroceriesList({super.key});

  @override
  State<GroceriesList> createState() => _GroceriesListState();
}

class _GroceriesListState extends State<GroceriesList> {
  List<Map<String, dynamic>> groceriesList = [
    {
      'title': 'Pulses',
      'image': 'assets/grains.png',
      'bgColor': Colors.pink.shade50
    },
    {
      'title': 'Rice',
      'image': 'assets/rice.png',
      'bgColor': Colors.lightBlue.shade50
    },
    {
      'title': 'Bell pepper',
      'image': 'assets/bell_papper.png',
      'bgColor': Color(0xff53B175)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,

        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: groceriesList.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                 height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: groceriesList[index]['bgColor'],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        groceriesList[index]['image'],
                        height: 60,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomText(
                        groceriesList[index]['title'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),

                    ],
                  ),
                ),
              );
            }));
  }
}
