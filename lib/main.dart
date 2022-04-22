import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'titre de mon app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> fruitsLegumes = List.empty(growable: true);

  @override
  void initState() {
    fruitsLegumes.add("pommes");
    fruitsLegumes.add("orange");
    fruitsLegumes.add("raisins");
    fruitsLegumes.add("poireaux");
    fruitsLegumes.add("brocolis");
    fruitsLegumes.add("épinard");
    fruitsLegumes.add("poire");
    fruitsLegumes.add("banane");
    fruitsLegumes.add("framboise");
    fruitsLegumes.add("fraise");
    fruitsLegumes.add("pastèque");
    fruitsLegumes.add("melon");
    fruitsLegumes.add("kiwi");
    fruitsLegumes.add("Hijiki");
    fruitsLegumes.add("Corella Pear");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (_,i)=> Divider(),
          itemCount: fruitsLegumes.length,
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              onTap: (){
                ScaffoldMessenger.
                of(context).showSnackBar(
                    SnackBar(
                        duration:Duration(milliseconds: 30),
                        content: Text(fruitsLegumes[index])
                    )
                );
              },
              child: ListTile(
                title: Text(fruitsLegumes[index]),
              ),
            );
          }
        ),
      ),
    );
  }
}
