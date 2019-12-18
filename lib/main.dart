import 'package:flutter/material.dart';

void main() {
  runApp(StartPage());
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "New Task",
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 10, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tab Grubu"),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.amber,
          isScrollable: true,
          tabs: [
            Tab(child: Text("1. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("2. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("3. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("4. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("5. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("6. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("7. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("8. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("9. Tab Menü"), icon: Icon(Icons.call)),
            Tab(child: Text("10. Tab Menü"), icon: Icon(Icons.call))
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: SafeArea(
          child: TabBarView(
        children: [
          new Text("1. Tab İçeriği"),
          new Text("2. Tab İçeriği"),
          new Text("3. Tab İçeriği"),
          new Text("4. Tab İçeriği"),
          new Text("5. Tab İçeriği"),
          new Text("6. Tab İçeriği"),
          new Text("7. Tab İçeriği"),
          new Text("8. Tab İçeriği"),
          new Text("9. Tab İçeriği"),
          new Text("10. Tab İçeriği"),
        ],
        controller: _tabController,
      )),
    );
  }
}
