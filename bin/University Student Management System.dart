// University Student Management System in Dart
// OOP Concepts: Abstract Class, Inheritance, Polymorphism, Encapsulation, Static, Factory, Interface

import 'dart:io';
import 'course.dart';
import 'professor.dart';
import 'student.dart';
import 'university.dart';

void main() {
  void clearTerminal() {
  if (Platform.isWindows) {
    // Windows
    stdout.write("\x1B[2J\x1B[0;0H");
  } else {
    // Unix/Linux/Mac
    stdout.write("\x1B[2J\x1B[H");
  }
}
  var university = University();

  while (true) {
    print("\n===== University Management Menu =====");
    print("1. Add Course");
    print("2. Add Student");
    print("3. Add Professor");
    print("4. List All");
    print("5. Search Student by ID");
    print("6. Exit");
    stdout.write("Enter your choice: ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        clearTerminal();
      
        stdout.write("Enter course name: ");
        var cname = stdin.readLineSync()!;
        stdout.write("Enter credit hours: ");
        var ch = int.parse(stdin.readLineSync()!);
        university.addCourse(Course(cname, ch));
        break;

      case '2':
        clearTerminal();
        stdout.write("Enter student name: ");
        var sname = stdin.readLineSync()!;
        stdout.write("Enter age: ");
        var sage = int.parse(stdin.readLineSync()!);
        stdout.write("Enter ID: ");
        var sid = stdin.readLineSync()!;
        var student = Student(sname, sage, sid);

        stdout.write("Enroll how many courses?: ");
        int n = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < n; i++) {
          stdout.write("Course index (0 to ${university.courses.length - 1}): ");
          int index = int.parse(stdin.readLineSync()!);
          if (index >= 0 && index < university.courses.length) {
            student.enroll(university.courses[index]);
          }
        }
        university.addStudent(student);
        break;

      case '3':
        clearTerminal();
        stdout.write("Enter professor name: ");
        var pname = stdin.readLineSync()!;
        stdout.write("Enter age: ");
        var page = int.parse(stdin.readLineSync()!);
        stdout.write("Enter department: ");
        var dept = stdin.readLineSync()!;
        var professor = Professor(pname, page, dept);

        stdout.write("Teach how many courses?: ");
        int m = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < m; i++) {
          stdout.write("Course index (0 to ${university.courses.length - 1}): ");
          int index = int.parse(stdin.readLineSync()!);
          if (index >= 0 && index < university.courses.length) {
            professor.teach(university.courses[index]);
          }
        }
        university.addProfessor(professor);
        break;

      case '4':
        clearTerminal();
        university.listAll();
        break;

      case '5':
        clearTerminal();
        stdout.write("Enter student ID: ");
        var id = stdin.readLineSync()!;
        university.listStudentById(id);
        break;

      case '6':
        clearTerminal();
        print("Goodbye!");
        return;

      default:
        clearTerminal();
        print("Invalid choice. Try again.");
    }
  }
}