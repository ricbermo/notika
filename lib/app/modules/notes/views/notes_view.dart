import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notika/app/modules/notes/controllers/notes_controller.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesView extends GetView<NotesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notas',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      )),
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30,
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ],
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(0),
                  crossAxisCount: 2,
                  itemCount: 10,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: getColor(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getText(),
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Feb 11, 1990',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Color getColor() {
  Random random = Random();

  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

String getText() {
  Random random = Random();
  return lorem(paragraphs: 1, words: random.nextInt(10) + 5);
}
