import 'package:dslab/resource/customDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/footer_view.dart';
import 'cataData.dart';
import 'dataSet.dart';
import 'imaData.dart';

class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
    @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/logo2.png",
                    scale: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/diu.png",
                        scale: 8,
                      ),
                      Image.asset(
                        "images/notification.gif",
                        scale: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
      color: Color(0xFF204895),
          child: Column(
            children: [
              ClipPath(
            clipper: CustomDesign(),
            child: Container(
              height: 200,
              width: deviceWidth,
             // color: Color(0xFF2E9481),
              decoration:const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                ],
              )),
              child: const SizedBox(
                height: 150,
                child: Padding(
                  padding: EdgeInsets.only(left: 30, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Resources",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF238E7B),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.grey, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                        ),
                      ),
                       
                    ],
                  ),
                ),
              ),
            ),
          ),
         
         
           
            dataset(),
            const SizedBox(height: 20,),
            catadata(),
            const SizedBox(height: 20,),
            imadata(),
            const SizedBox(height: 20,),
            const Footer(),         
            const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

}
