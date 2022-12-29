import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:community_dev/constants/style.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class chaling extends StatelessWidget {
  const chaling({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 270,
      child: Column(
        children: [
          Text(
            "Daily Challing ",
            style: GoogleFonts.abel(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 210,
            decoration: BoxDecoration(
              // border: Border.all(color: colors.primary),
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffB4AEE8).withOpacity(0.3),
            ),
            width: MediaQuery.of(context).size.width,
            child: Swiper(
              autoplay: false,
              loop: true,
              onTap:((index) => null),
             // autoplayDisableOnInteraction: false,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Creat simple food app ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900)),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                              "wright a simpple app use language what you want be craitf is ui withot use backend",
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  child: Image.asset('assets/time-left.png'),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Expected time: ",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w900)),
                                    Text("20 Minut ",
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 120,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: const EdgeInsets.all(0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      gradient: LinearGradient(colors: [
                                        colors.Text,
                                        colors.primary,
                                      ])),
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    "Acceptance",
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: 3,
              pagination: SwiperPagination(),
              control: SwiperControl(),
            ),
          ),
          Container(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
