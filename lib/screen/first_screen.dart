import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/tools/styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                width: width,
                height: 56,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveWrapper.of(context).isLargerThan(TABLET)
                        ? Row(
                            children: [
                              Text(
                                'Products',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Cart',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'About Me',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Favorite',
                                style: getBodyWhite(context),
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Setting',
                                style: getBodyWhite(context),
                              ),
                            ],
                          )
                        : const Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                          ),
                    const Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isLargerThan(TABLET)
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                rowPadding: const EdgeInsets.all(10),
                columnPadding: const EdgeInsets.all(10),
                rowMainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResponsiveRowColumnItem(
                    child: ProductWidget(
                        width: width, name: '1', image: 'pic1.jpg'),
                  ),
                  ResponsiveRowColumnItem(
                    child: ProductWidget(
                        width: width, name: '2', image: 'pic2.jpg'),
                  ),
                  ResponsiveRowColumnItem(
                    child: ProductWidget(
                        width: width, name: '3', image: 'pic3.jpg'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isLargerThan(TABLET)
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                rowPadding: const EdgeInsets.all(10),
                columnPadding: const EdgeInsets.all(10),
                rowMainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResponsiveRowColumnItem(
                    child: ProductWidget(
                        width: width, name: '4', image: 'pic4.jpg'),
                  ),
                  ResponsiveRowColumnItem(
                    child: ProductWidget(
                        width: width, name: '5', image: 'pic5.jpg'),
                  ),
                  ResponsiveRowColumnItem(
                    child: ProductWidget(
                        width: width, name: '6', image: 'pic6.jpg'),
                  ),
                ],
              ),
              Container(
                width: width,
                height: 150,
                color: Colors.blue,
                child: ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
                      ? ResponsiveRowColumnType.ROW
                      : ResponsiveRowColumnType.COLUMN,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  columnPadding: const EdgeInsets.all(5),
                  rowPadding: const EdgeInsets.all(5),
                  columnSpacing: 10,
                  rowSpacing: 25,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Text(
                        'instagram',
                        style: getBodyWhite(context),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Text(
                        'Youtube',
                        style: getBodyWhite(context),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Text(
                        'Linkedin',
                        style: getBodyWhite(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.width,
    required this.name,
    required this.image,
  }) : super(key: key);

  final double width;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: width * 0.3,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: 5,
              ),
              width: width * 0.3,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gaming stuff$name',
                    style: getBodyWhite(context),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Lorem Ipsum, sometimes referred to as \'lipsum\', is the placeholder text used in design when creating content.',
                    style: getDescWhite(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
