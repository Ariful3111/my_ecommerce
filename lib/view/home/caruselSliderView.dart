import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/model/Banner.dart';
import 'package:my_ecommerce/view/home/bannercard.dart';

class caruselSliderView extends StatefulWidget {
 final List<adBanner> bannerlist;
  const caruselSliderView({Key? key, required this.bannerlist}) : super(key: key);

  @override
  State<caruselSliderView> createState() => _caruselSliderViewState();
}

class _caruselSliderViewState extends State<caruselSliderView> {
  int _currentIndex=0;
  late List<Widget> _bannerlist;
  @override
  void initState() {
    // TODO: implement initState
    _bannerlist= widget.bannerlist.map((e) => BannerCard(imageUrl: e.image)).toList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(items: _bannerlist,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              viewportFraction: 1,
              onPageChanged: (index, reason){
                setState(() {
                  _currentIndex=index;
                });
              }
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.bannerlist.map((e) {
            int index= widget.bannerlist.indexOf(e);
            return Container(
              width: 10,
              height: 10,
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex==index ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
