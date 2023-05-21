import 'package:flutter/material.dart';
import 'package:newsblog/view/widgets/new_container.dart';

import 'controller/fetchnews.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    FetchNews.fetchNews();
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount:10
          ,itemBuilder: (context,index){
            return NewsContainer(
              imgUrl: "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
              newshead:"5G In India" ,
              newsDescr:"Jio also has support from Qualcomm and Intel for its 5G plan. The latter two are Jio’s hardware enablers: Chipmaker Qualcomm is expected to offer deep technology know-how and insights to drive the 5G vision. Intel has advanced edge computing offering across processors and access to this technology can help Jio pace the 5G rollout. Google and Jio have come to a commercial agreement, where they would work together on an entry-level Android smartphone with 4G and possibly 5G capabilities.",
              newsUrl: "https://www.networkworld.com/article/3653380/when-will-5g-be-available-in-india.html",
            );
      }),
    );
  }
}
