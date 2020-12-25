import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:notika/app/modules/notes/controllers/notes_controller.dart';
import 'package:notika/app/modules/notes/views/widgets/note_tile.dart';

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
                child: controller.obx(
                    (state) => StaggeredGridView.countBuilder(
                          padding: EdgeInsets.all(0),
                          crossAxisCount: 2,
                          itemCount: 10,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          itemBuilder: (context, index) {
                            return NoteTile(note: controller.state[index]);
                          },
                          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                        ),
                    onLoading: Center(child: CircularProgressIndicator()),
                    onError: (error) => Center(
                          child: Text(
                            error,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
