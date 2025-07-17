import 'course.dart';
import 'person.dart';

class Student extends Person {
  late final String _id;
  List<Course> courses = [];

  Student(super.name, super.age, this._id);

  setId(id) {
    _id = id;
  }

  getId() {
    return _id;
  }

  void enroll(Course course) {
    courses.add(course);
    //print("$name enrolled in ${course.courseName}");
  }

  @override
  void displayInfo() {
    print("Student: $name, ID: $getId, Age: $age");
    print("Enrolled courses:");
    for (var course in courses) {
      course.displayCourse();
    }
  }
}