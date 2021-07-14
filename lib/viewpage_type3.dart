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
        children: <Widget>[
          FirstPage(pageController: pageController,),
          SecondPage(pageController: pageController),
          ThirdPage(pageController: pageController),
          FourPage(pageController: pageController),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  final PageController pageController;
  const FirstPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('First Page',style: TextStyle(fontSize: 25),),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name'
                ),
              ),
              ElevatedButton(
                  onPressed: ()=> pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease),
                  child: Text('Jump to Next Page'))
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final PageController pageController;
  const SecondPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Second Page',style: TextStyle(fontSize: 25)),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name'
                ),
              ),
              ElevatedButton(
                  onPressed: ()=> pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease),
                  child: Text('Jump to Next Page'))
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final PageController pageController;
  const ThirdPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Third Page',style: TextStyle(fontSize: 25),),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name'
                ),
              ),
              ElevatedButton(
                  onPressed: ()=> pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease),
                  child: Text('Jump to Next Page'))
            ],
          ),
        ),
      ),
    );
  }
}

class FourPage extends StatelessWidget {
  final PageController pageController;
  const FourPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Fourth Page',style: TextStyle(fontSize: 25),),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name'
                ),
              ),
              ElevatedButton(
                // onPressed: ()=> pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease),
                  onPressed: () => pageController.jumpToPage(0),
                  child: Text('Back to Main Page (Finish)'))
            ],
          ),
        ),
      ),
    );
  }
}
