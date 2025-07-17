import 'course.dart';
import 'professor.dart';
import 'student.dart';

class University {
  static String name = "Fayoum University";
  List<Student> students = [];
  List<Professor> professors = [];
 List<Course> courses = [];

  void addCourse(Course course) => courses.add(course);
  void addStudent(Student student) => students.add(student);
  void addProfessor(Professor professor) => professors.add(professor);

  void listAll() {
    print("University: $name");
    print("--- Students ---");
    for (var s in students) {
      s.displayInfo();
    }
    print("--- Professors ---");
    for (var p in professors) {
      p.displayInfo();
    }
  }

  void listAllStudent() {
    print("University: $name");
    print("--- Students ---");
    for (var s in students) {
      s.displayInfo();
    }
  }

  void listStudentById(String id) {
    bool isHere = false;
    print("University: $name");
    print("--- Student with ID:$id ---");
    for (var s in students) {
      if (s.getId() == id) {
        print(s.name);
        isHere = true;
        break;
      }
    }
    if (!isHere) {
      print('there is not any student with this id');
    }
  }

  void listAllProfessors() {
    print("University: $name");
    print("--- Professors ---");
    for (var p in professors) {
      p.displayInfo();
    }
  }
}