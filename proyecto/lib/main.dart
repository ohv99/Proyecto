// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        //controller for TabBar
        length: 5, //lenght of tabs in TabBar
        child: MaterialApp(
          home: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text("Redhart"), //titulo de la aplicacion
          backgroundColor:
              const Color.fromARGB(255, 241, 0, 0), //color de la barra
          // ignore: deprecated_member_use
          brightness: Brightness
              .dark, //redAccent is darker color so set brightness to dark
          elevation: 5.0, //elevacion del appbar
          bottom: TabBar(
            indicatorColor:
                const Color.fromARGB(255, 255, 200, 0), //color de la barra
            indicatorSize: TabBarIndicatorSize.tab, //tamano de la barra'
            indicatorWeight: 8, //alto de la barra

            //tabbar de abajo del appbar
            onTap: (index) {
              // ignore: avoid_print
              print("selected tab is $index");
            },
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_boat))
              //tabs extras aqui
            ],
          ),
          actions: [
            //acciones del widget en el appbar

            IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.search)),
            //more widgets to place here
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                child:
                    // ignore: unnecessary_const
                    const Text("Menu",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25)),
              ),
              ListTile(
                title: const Text(
                  'Cards',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()));
                },
              ),
              ListTile(
                title: const Text(
                  'Listas',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThreeRoute()));
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Divider',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FourRoute()));
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Dialog',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DialogExample()));
                },
              ),
              ListTile(
                title: const Text(
                  'CheckBox',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FiveRoute()));
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Barra de progreso',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SixRoute()));
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Slider',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SliderExample()));
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Selector Radiobutton',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
            ],
          ),
        ), //drawer on scaffold, it will create menu icon on appbar

        body: const TabBarView(children: <Widget>[
          Icon(Icons.flight, size: 350),
          Icon(Icons.directions_transit, size: 350),
          Icon(Icons.directions_car, size: 350),
          Icon(Icons.directions_bike, size: 350),
          Icon(Icons.directions_boat, size: 350),
        ]));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 241, 0, 0),
          // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Buscar...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: Column(children: [miCard(), miCard()]),
    );
  }
}

class ThreeRoute extends StatelessWidget {
  const ThreeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listas"),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: Center(child: _myListView(context)),
    );
  }
}

class FourRoute extends StatelessWidget {
  const FourRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divider"),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: const Center(child: DividerExample()),
    );
  }
}

class FiveRoute extends StatelessWidget {
  const FiveRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: const Center(child: MyStatefulWidget()),
    );
  }
}

class SixRoute extends StatelessWidget {
  const SixRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barra de progreso"),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: const Center(child: ProgressIndicatorExample()),
    );
  }
}

Widget miCard() {
  return Card(
    // Con esta propiedad modificamos la forma de nuestro card
    // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

    // Con esta propiedad agregamos margen a nuestro Card
    // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
    margin: const EdgeInsets.all(15),

    // Con esta propiedad agregamos elevación a nuestro card
    // La sombra que tiene el Card aumentará
    elevation: 10,

    // La propiedad child anida un widget en su interior
    // Usamos columna para ordenar un ListTile y una fila con botones
    child: Column(
      children: <Widget>[
        // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Titulo'),
          subtitle: Text(
              'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          leading: Icon(Icons.home),
        ),

        // Usamos una fila para ordenar los botones del card
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () => {}, child: const Text('Aceptar')),
            TextButton(onPressed: () => {}, child: const Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: const <Widget>[
      ListTile(
        title: Text('Negro'),
      ),
      ListTile(
        title: Text('Blanco'),
      ),
      ListTile(
        title: Text('Gris'),
      ),
    ],
  );
}

class DividerExample extends StatelessWidget {
  const DividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.amber,
              child: const Center(
                child: Text('Arriba'),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          // Subheader example from Material spec.
          // https://material.io/components/dividers#types
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Subheader',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                child: Text('Abajo'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo ShowDialog'),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () => _dialogBuilder(context),
          child: const Text("Abrir Dialogo",
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Oscar Esta Aprobado?'),
          content:
              const Text('Por favor si me aprueba se va a ir al cielo profe'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('SI'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('NO'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Indicador de progreso',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            LinearProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Indicador de progreso',
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Detener',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Switch(
                  value: determinate,
                  onChanged: (bool value) {
                    setState(() {
                      determinate = value;
                      if (determinate) {
                        controller.stop();
                      } else {
                        controller
                          ..forward(from: controller.value)
                          ..repeat();
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        backgroundColor: const Color.fromARGB(255, 241, 0, 0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            activeColor: Color.fromARGB(255, 180, 54, 15),
            value: _currentSliderPrimaryValue,
            secondaryTrackValue: _currentSliderSecondaryValue,
            label: _currentSliderPrimaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderPrimaryValue = value;
              });
            },
          ),
          Slider(
            activeColor: Color.fromARGB(255, 27, 153, 33),
            value: _currentSliderSecondaryValue,
            label: _currentSliderSecondaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderSecondaryValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button en Flutter"),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Cual es tu genero?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
              title: Text("Hombre"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Mujer"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Un pollo"),
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
