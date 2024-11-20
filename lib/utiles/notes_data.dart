import 'package:notesapp/utiles/notes.dart';

class NotesData {
//overall  list of notes
  List<Notes> allNotes = [
    Notes(
      id: 1,
      note: 'Note 1',
    ),
    Notes(
      id: 2,
      note: 'Note 2',
    ),
    Notes(
      id: 3,
      note: 'Note 3',
    ),
  ];

//get notes
List<Notes> getNotes(){
  return allNotes;
}
//add a new note
void addNewNote(Notes note){
  allNotes.add(note);
}
//update note
void updateNotes(Notes note, String text){
  for(int  i = 0; i < allNotes.length; i++){
    if(allNotes[i].id == note.id){
      // replace the text 
      allNotes[i].note = text;
    }
  }
}
//delete note
void deleteNote(Notes note){
  allNotes.remove(note);
}
}
