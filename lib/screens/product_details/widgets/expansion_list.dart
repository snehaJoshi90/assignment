import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';

class ExpansionList extends StatefulWidget {
  const ExpansionList({super.key});

  @override
  State<ExpansionList> createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  final List<Map<String, String>> dataList = [
    {
      'title': 'Product Detail',
      'description': 'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet..',
    },
    // {
    //   'title': 'Nutrition',
    //   'description': 'This is the second item description.',
    // },
    // {
    //   'title': 'Review',
    //   'description': 'This is the third item description.',
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return
    Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(),
              ExpansionTile(
                title: CustomText(dataList[index]['title']!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomText(
                      dataList[index]['description']!,
                      style: TextStyle(fontSize: 13,color: Color(0xff7C7C7C)),
                    ),
                  ),
                ],
              ),
              Divider( )// Custom divider after the ExpansionTile

            ],
          );
        },
      ),
    );
  }
}
