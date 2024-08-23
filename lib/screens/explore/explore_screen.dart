import 'package:flutter/material.dart';
import 'package:assignment/common/custom_text.dart';
import 'package:assignment/screens/explore/widgets/gride_list.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  'Find Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
                const SizedBox(
                  height: 20,
                ),
                GrideList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
