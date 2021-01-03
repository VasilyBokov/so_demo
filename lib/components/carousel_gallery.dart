import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// В этом файле описаны галереи для событий в виде карточек
// и в виде обычных страничных фоток

// Список ссылок на фото для события, планируется, что эти ссылки мы получаем из бэка
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class ImageSliderCard extends StatefulWidget {
  @override
  _ImageSliderCardState createState() => _ImageSliderCardState();
}

// про контроллер дополнительно читать и написать фидбэк тут
class _ImageSliderCardState extends State<ImageSliderCard> {
  final ScrollController _controllerOne = ScrollController();

// Check if the scrollController is attached to a scroll view by using its hasClients property first.

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: CupertinoScrollbar(
        isAlwaysShown: true,
        controller: _controllerOne,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 150,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: imgList
                        .map((item) => Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                child: Image.network(
                                  item,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final ScrollController _controllerOne = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // Видимо, купертиноскроллбар является родителем некоторого
      // скролл объекта
      child: CupertinoScrollbar(
        isAlwaysShown: true,
        controller: _controllerOne,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          physics: PageScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: imgList
                .map((item) => Container(
                      child: Center(
                        child: Image.network(
                          item,
                          width: size.width,
                          //height: size.height * 0.8,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
