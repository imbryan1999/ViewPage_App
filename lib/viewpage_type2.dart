import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Same AppBar for all Page'),
        backgroundColor: Colors.red,
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('First Page', style: TextStyle(fontSize: 25),),
                ElevatedButton(
                    onPressed: () => pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease),
                    child:Text('Next'))
              ],
            ),
          ),

          Container(
            color: Colors.brown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Second Page', style: TextStyle(fontSize: 25),),
                ElevatedButton(
                    onPressed: () => pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease),
                    child:Text('Next'))
              ],
            ),
          ),

          Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Third Page', style: TextStyle(fontSize: 25),),
                ElevatedButton(
                    onPressed: () => pageController.jumpToPage(0),
                    child:Text('Finish'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
