import 'package:flutter/material.dart';

class HomeSideMeny extends StatelessWidget {
  static const int Settings=10;
  static const int Cattegories=20;
  Function onItemClickCallBack;
  HomeSideMeny(this.onItemClickCallBack);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 64),
            color: Theme.of(context).primaryColor,
            child: Text(
              'News App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              InkWell( onTap: (){onItemClickCallBack(Settings);},
                  child: Icon(
                Icons.settings,
                size: 30,
              ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              InkWell( onTap: (){onItemClickCallBack(Cattegories);},
                  child: Icon(
                Icons.drag_indicator_outlined,
                size: 30,
              ))
            ],
          )
        ],
      ),
    );
  }
  void onSideMenyIconClick(){}

}
