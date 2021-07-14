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
          FirstPage(pageController: pageController),
          SecondPage(pageController: pageController),
          ThirdPage(pageController: pageController),
          FourthPage(pageController: pageController),
        ],
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  final PageController pageController;

  const FirstPage({Key? key, required this.pageController}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with AutomaticKeepAliveClientMixin<FirstPage> {
  get pageController => pageController;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'First Page',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
              ),
              ElevatedButton(
                  onPressed: () => widget.pageController.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.ease),
                  child: Text('Jump to Next Page'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class SecondPage extends StatefulWidget {
  final PageController pageController;

  const SecondPage({Key? key, required this.pageController}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
    with AutomaticKeepAliveClientMixin<SecondPage> {
  get pageController => pageController;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Second Page', style: TextStyle(fontSize: 25)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
              ),
              ElevatedButton(
                  onPressed: () => widget.pageController.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.ease),
                  child: Text('Jump to Next Page'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class ThirdPage extends StatefulWidget {
  final PageController pageController;

  const ThirdPage({Key? key, required this.pageController}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>
    with AutomaticKeepAliveClientMixin<ThirdPage> {
  get pageController => pageController;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Third Page',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
              ),
              ElevatedButton(
                  onPressed: () => widget.pageController.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.ease),
                  child: Text('Jump to Next Page'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class FourthPage extends StatefulWidget {
  final PageController pageController;

  const FourthPage({Key? key, required this.pageController}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage>
    with AutomaticKeepAliveClientMixin<FourthPage> {
  get pageController => pageController;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Fourth Page',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
              ),
              ElevatedButton(
                  onPressed: () => widget.pageController.jumpToPage(0),
                  child: Text('Back to Main Page (Finish)'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}