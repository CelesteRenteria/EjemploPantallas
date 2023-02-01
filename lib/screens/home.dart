import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/details_screen.dart';
import 'package:flutter_application_1/widgets/big_cards.dart';
import 'package:flutter_application_1/widgets/small_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: const [
                SizedBox(
                    width: 200,
                    child: Text('Profesionales Psicología',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30))),
                Spacer(),
                FloatingActionButton.extended(
                  onPressed: null,
                  label: Text(
                    '''Cambiar a
Nutrición''',
                    textAlign: TextAlign.center,
                  ),
                  backgroundColor: Colors.green,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              SizedBox(
                width: 300,
                child: TextFormField(
                  style: TextStyle(color: Colors.grey[200], fontSize: 12),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: const Color.fromRGBO(189, 189, 189, 1),
                      labelText: "Busca a tu especialista de confianza",
                      prefixIcon: const Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(Icons.search_sharp),
                      )),
                ),
              ),
              Spacer(),
              const Icon(
                Icons.filter_list_alt,
                color: Colors.blue,
                size: 30,
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text('Premium',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30)),
                Spacer(),
                TextButton(
                    onPressed: null,
                    child: Text(
                      'Ver todo',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w300,
                          fontSize: 20),
                    ))
              ],
            ),
            Column(children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const <Widget>[
                    BigCard(
                      calification: '5',
                      imageURL:
                          'https://lamenteesmaravillosa.com/wp-content/uploads/2019/06/psicologa-paciente-420x281.jpg',
                      name: 'Abigail Ruiz Peniche',
                    ),
                    BigCard(
                      calification: 'Sin calificación',
                      name: 'Rodrigo Lopez',
                      imageURL:
                          'https://media.istockphoto.com/id/1016761216/es/foto/concepto-del-retrato.jpg?s=612x612&w=0&k=20&c=reX53c0W5DKXYb5d8bvcWG20yTc_QiUUuoYwRFtCttw=',
                    )
                  ],
                ),
              )
            ]),
            const Divider(
              thickness: 3,
            ),
            Row(
              children: [
                Text('Platino',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30)),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                  imageURL:
                                      'https://www.estudiofoto.com/wp-content/uploads/2020/06/Retrato-Estudio-corporativo.jpg')));
                    },
                    child: Text(
                      'Ver todo',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w300,
                          fontSize: 20),
                    ))
              ],
            ),
            Column(children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const <Widget>[
                    SmallCard(
                        name: "Fernanda Mendoza Flores",
                        imageURL:
                            "https://uploads-ssl.webflow.com/6321fa4eb9021afb4a237ebb/63518896b549f5266e24ef83_IMA0000460000046964.jpeg"),
                    SmallCard(
                        name: "Juan Figo Barcenas",
                        imageURL:
                            "https://www.estudiofoto.com/wp-content/uploads/2020/06/Retrato-Estudio-corporativo.jpg"),
                    SmallCard(
                        name: "Juan Figo Barcenas",
                        imageURL:
                            "https://www.estudiofoto.com/wp-content/uploads/2020/06/Retrato-Estudio-corporativo.jpg")
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    ));
  }
}
