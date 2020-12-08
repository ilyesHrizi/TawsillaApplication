import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePageViewState());
  }

}

class HomePageViewState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    _HomePageViewState   createState() => _HomePageViewState();

  }
}

class _HomePageViewState extends State<HomePageViewState> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(16),
                child: Stack(
                  children: <Widget>[
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 36),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                              colors: [Color(0xFF213B6C), Color(0xFF0059A5)]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlutterLogo(size: 48),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Title of the Card',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(color: Colors.white),
                                  ),
                                  Text('Some description',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(color: Colors.white)),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 36,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 8,
                      child: Icon(
                        Icons.star,
                        size: 32,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
  
}