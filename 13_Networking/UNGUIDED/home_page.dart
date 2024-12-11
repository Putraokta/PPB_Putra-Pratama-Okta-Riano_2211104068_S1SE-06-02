import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'note_controller.dart';

class HomePage extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        centerTitle: true,
      ),
      body: Obx(
        () => noteController.notes.isEmpty
            ? const Center(
                child: Text('No notes available. Add a new note!'),
              )
            : ListView.builder(
                itemCount: noteController.notes.length,
                itemBuilder: (context, index) {
                  final note = noteController.notes[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text(note.title),
                      subtitle: Text(note.description),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => noteController.deleteNote(index),
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
