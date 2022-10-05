import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wds_17_hero/DetailPage.dart';

class HomePage extends StatelessWidget {
  void pushRoute(BuildContext context) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (BuildContext context) => const DetailPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('wds17 Hero Animation'),
          centerTitle: true,
        ),
        body: Table(
          children: [
            const TableRow(children: [
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              )
            ]),
            const TableRow(children: [
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              ),
              Placeholder(
                fallbackHeight: 150,
              )
            ]),
            TableRow(children: [
              GestureDetector(
                onTap: () => pushRoute(context),
                child: const Hero(
                  tag: 'logo',
                  child: FlutterLogo(
                    size: 150,
                  ),
                ),
              ),
              const Placeholder(
                fallbackHeight: 150,
              ),
              const Placeholder(
                fallbackHeight: 150,
              )
            ]),
            TableRow(children: [
              const Placeholder(
                fallbackHeight: 150,
              ),
              const Placeholder(
                fallbackHeight: 150,
              ),
              Container()
            ])
          ],
        ));
  }
}
