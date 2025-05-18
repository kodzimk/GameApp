import 'package:flutter/material.dart';


class SectionData {
  final Color color;
  final Color colorOscuro;
  final int count;
  final List<String> titles;
  final String title;
  final Color colorOfText;
  final int startIndex;
  final List<String> textForQuest;

  const SectionData({
    required this.color,
    required this.colorOscuro,
    required this.title,
    required this.count,
    required this.titles,
    required this.colorOfText,
    required this.startIndex,
    required this.textForQuest,
  });
}

List<int> options = List.filled(24, 0);

class Section extends StatefulWidget {
  final SectionData data;

  const Section({
    super.key,
    required this.data,
  });
  
  @override
  State<Section> createState() => _SectionState();
}
 class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [  
        Row(
          children: [
            const Expanded(
              child: Divider(
                color: Color(0xFF2D3D41),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              widget.data.title,
              style: const TextStyle(
                color: Color.fromARGB(255, 42, 51, 54),
                fontWeight: FontWeight.bold,
                fontFamily: 'Cinzel',
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Expanded(
              child: Divider(
                color: Color(0xFF2D3D41),
              ),
            ),
          ],

        ),
        const SizedBox(
          height: 24.0,
        ),
        ...List.generate(
          widget.data.count,
          (i) => Container(
                  margin: EdgeInsets.only(
                    bottom: 24.0,
                    left: getLeft(i),
                    right: getRight(i),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: widget.data.colorOscuro,
                        width: 6.0,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                  
                  child: ElevatedButton(
                    onPressed: ()  {
                            if(options[i + widget.data.startIndex] == 1 && i + widget.data.startIndex + 1 <= 23)
                            {
                              setState(() {
                                 options[i + widget.data.startIndex + 1] = 1;
                              });
                            }
                                    
                            if(options[i + widget.data.startIndex] == 1)
                            {
                                Navigator.of(context).pushNamed('/Part',arguments: {widget.data.titles[i],widget.data.textForQuest[i]});
                            }  
                      },
                      
                      style: ElevatedButton.styleFrom(
                      backgroundColor: widget.data.color,
                      fixedSize: const Size(180, 48),
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: visibleButton(i),
                  ),
                )
        )
      ],
    );
  }

Widget visibleButton(int i)
{
  setState(() {
       options[widget.data.startIndex] = 1;
  });

  return options[i + widget.data.startIndex] == 1 ? Text(widget.data.titles[i],style: TextStyle(fontFamily: 'Cinzel',color: widget.data.colorOfText,fontSize: 11))
   : Text(widget.data.titles[i],style: TextStyle(fontFamily: 'Cinzel',color: Color.fromARGB(75, 100, 100, 100),fontSize: 11)) ;
}
 

  double getLeft(int indice) {
    const margin = 72.0;
    int pos = indice % 9;

    if (pos == 1) {
      return margin;
    }
    if (pos == 2) {
      return margin * 2;
    }
    if (pos == 3) {
      return margin;
    }

    return 0.0;
  }

  double getRight(int indice) {
    const margin = 72.0;
    int pos = indice % 9;

    if (pos == 5) {
      return margin;
    }
    if (pos == 6) {
      return margin * 2;
    }
    if (pos == 7) {
      return margin;
    }

    return 0.0;
  }
}