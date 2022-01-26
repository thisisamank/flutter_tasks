import 'package:flutter/material.dart';
import 'package:submission/constants/constants.dart';
import 'package:submission/constants/strings.dart';
import 'package:submission/constants/lists.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: AlignmentDirectional.centerStart,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.MainScreenAppHeader,
                      style: TextStyle(
                        fontSize: AppConstants.MainScreenAppHeaderSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.person,
                        size: AppConstants.MainScreenAppHeaderIconSize),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      AppString.HotelText,
                      style: TextStyle(
                        fontSize: AppConstants.HotelTextFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: AppConstants.HotelIconSize,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                //mainAxisSpacing: 10,
                children: hotels,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      AppString.IslandText,
                      style: TextStyle(
                        fontSize: AppConstants.IslandTextFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: AppConstants.IslandIconSize,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                //mainAxisSpacing: 10,
                children: islands,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
