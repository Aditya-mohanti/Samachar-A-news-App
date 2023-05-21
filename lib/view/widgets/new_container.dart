import 'package:flutter/material.dart';
class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newshead;
  String newsDescr;
  String newsUrl;
  NewsContainer({required this.imgUrl, required this.newshead, required this.newsDescr, required this.newsUrl});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Image.network(
                height: 400,
                width: MediaQuery.of(context).size.width
                ,imgUrl),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text(newshead,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text(newsDescr,style: TextStyle(fontSize: 16),),
              ],
            ),),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(onPressed:(){}, child: Text("Read More"),),
                ),
              ],
            ),
            SizedBox(height: 20,),

          ]
      ),

    );
  }
}
