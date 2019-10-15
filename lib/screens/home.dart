import 'package:flutter/material.dart';
import '../models/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Data> data = [
    Data(icon: "mic", judul: "17 Agustus 1945", sub: "Lagu"),
    Data(icon: "person", judul: "Soekarno", sub: "Presiden"),
    Data(icon: "mic", judul: "Indonesia Raya", sub: "Lagu"),
    Data(icon: "person", judul: "Bung Hatta", sub: "Wakil Presiden"),
    Data(icon: "mic", judul: "Maju Tak gentar", sub: "Lagu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        centerTitle: true,
        title: Text("Indonesia Merdeka"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 10.0, left: 10.0),
        child: Column(
          children: <Widget>[
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 230,
                    image: NetworkImage(
                        'https://asset.kompas.com/crops/Qv5mlIaF1DKC_8z-NW2jCcDX0Cg=/0x0:640x427/750x500/data/photo/2019/08/17/5d57596d7b368.jpg'),
                    placeholder: AssetImage('assets/loading.gif'),
                  ),
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.add_box),
                Icon(Icons.save),
                Icon(Icons.home),
                Icon(Icons.delete),
                Icon(Icons.add_circle),
                Icon(Icons.favorite_border)
              ],
            ),
            Divider(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return Card(
                      child: ListTile(
                        leading: Icon(
                          data[i].icon == 'mic' ? Icons.mic : Icons.person,
                        ),
                        title: Text(
                          data[i].judul,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(data[i].sub),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
