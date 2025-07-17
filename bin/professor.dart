import 'course.dart';
import 'person.dart';

class Professor extends Person {
  String department;
  List<Course> courses = [];
  Professor(super.name, super.age, this.department);

  @override
  void displayInfo() {
    print("Professor: $name, Department: $department, Age: $age");
    print("Teach courses:");
    for (var course in courses) {
      course.displayCourse();
    }
  }

  void teach(Course course) {
    courses.add(course);
   // print("$name is teaching ${course.courseName}");
  }
}