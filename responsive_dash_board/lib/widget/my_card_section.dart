import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/dots_indicator.dart';
import 'package:responsive_dash_board/widget/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget{
  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() { 
      currentPageIndex = pageController.page!.round();
      setState(() {
        
      });
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
      const SizedBox(
        height: 20,
      ),
      MyCardsPageView(pageController: pageController,),
      const SizedBox(
        height: 20,
      ),
      DotIndicator(currentPageIndex: currentPageIndex,),
      ],
    );
  }
}