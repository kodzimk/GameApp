
import 'package:flutter/material.dart';
import '../widgets/section.dart';
import '../widgets/bottom_app.dart';

List<String> prology = ["Prology"];
List<String> epilogue = ["Epilogue"];
List<String> first = ["The Lure of Adventure","Infernal Place","The Malaysia Job","A Normal Life","Hector Alcazar","Once a Thief","Lights Out"];
List<String> second = ["The Grave of Henry Avery","Those Who Prove Worthy","The Twelve Towers","Hidden in Plain Sight","At Sea","Marooned","Join Me in Paradise"];
List<String> third = ["The Thieves of Libertalia","The Brothers Drake","For Better or Worse","New Devon","Avery's Descent","No Escape","Brother's Keeper","A Thief's End"];
Color _darkenColor(Color color, double factor) {
  return HSLColor.fromColor(color)
      .withLightness(
          (HSLColor.fromColor(color).lightness - factor).clamp(0.0, 1.0))
      .toColor();
}

class PlotPage extends StatefulWidget {
  const PlotPage({super.key});
  @override
  State<PlotPage> createState() => _PlotPageState();
}

class _PlotPageState extends State<PlotPage> {
     final data = <SectionData>[
     SectionData(
      color: Color.fromARGB(255,43,39,36),
      colorOscuro: _darkenColor(Color.fromARGB(255,43,39,36), 0.1),
      etapa: 1,
      seccion: 1,
      count: 1,
      titulo: 'Prology',
      titles: prology,
      colorOfText: Colors.white,
      StartIndex: 0,
     ),
      SectionData(
      color: Color.fromARGB(255,73,59,56),
      colorOscuro: _darkenColor(Color.fromARGB(255,73,59,56), 0.1),
      etapa: 1,
      seccion: 2,
      count: 7,
      titulo: 'The Lure of Adventure',
      titles: first,
      colorOfText: Colors.white,
      StartIndex: 1,
    ),
    SectionData(
      color: Color.fromARGB(255, 185,155,140),
      colorOscuro: _darkenColor(Color.fromARGB(255, 185,155,140), 0.1),
      etapa: 1,
      seccion: 3,
      count: 7,
      titulo: "The Grave of Henry Avery",
      titles: second,
      colorOfText: Colors.white,
      StartIndex: 8,
    ),
    SectionData(
      color: Color.fromARGB(255, 222,210,206),
      colorOscuro: _darkenColor(Color.fromARGB(255, 222,210,206), 0.1),
      etapa: 1,
      seccion: 4,
      count: 8,
      titulo: "The Thieves of Libertalia",
      titles: third,
      colorOfText: Color.fromARGB(255,73,59,56),
      StartIndex: 15,
    ),
    SectionData(
      color: Color.fromARGB(255, 242,240,246),
      colorOscuro: _darkenColor(Color.fromARGB(255, 242,240,246), 0.1),
      etapa: 1,
      seccion: 4,
      count: 1,
      titulo: "Epilogue",
      titles: epilogue,
      colorOfText: Color.fromARGB(255,0,0,0),
      StartIndex: 23,
    ),
  ];
  final scrollCtrl = ScrollController();

  Widget SetState()
  {
    options[0] = 1;
    return Text('');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,125,108,104),
      bottomNavigationBar: BottomApp(),
        body: Stack(
        children: [SetState(),
          ListView.separated(
            controller: scrollCtrl,
            itemBuilder: (_, i) => i == 0
                ? SizedBox(
                    height: 0.0,
                  )
                : Section(
                    data: data[i - 1],
                  ),
            separatorBuilder: (_, i) => const SizedBox(
              height: 24.0,
            ),
            itemCount: data.length + 1,
          ),
        ],
      ),
    );
  }
}
