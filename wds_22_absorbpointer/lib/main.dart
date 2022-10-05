import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool block = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds_22_absorbpointer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('wds_22_absorbpointer'),
        ),
        body: AbsorbPointer(absorbing: block, child: const HomeBody()),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              block ? (Icons.lock) : (Icons.lock_open),
            ),
            onPressed: () {
              setState(() {
                block = !block;
              });
              ;
            }),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomOutlinedButton(
              width: double.infinity,
            ),
            Row(
              children: const [
                CustomOutlinedButton(width: 250),
                Expanded(child: CustomOutlinedButton()),
              ],
            ),
            Row(
              children: const [
                Expanded(child: CustomOutlinedButton()),
                CustomOutlinedButton(width: 250),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: ListView.builder(
                    //  itemCount: 1,
                    itemBuilder: (BuildContext context, int index) => ListTile(
                          title: Text('${index + 1}'),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final double width;
  final double height;

  const CustomOutlinedButton({
    Key? key,
    this.width = 150,
    this.height = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        width: width,
        height: height,
        //color: Colors.blue,
        child: OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Boton',
//              style: TextStyle(color: Colors.white),
            )));
  }
}
