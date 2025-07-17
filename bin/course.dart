class Course {
  String courseName;
  int creditHours;

  Course(this.courseName, this.creditHours);

  void displayCourse() => print("Course: $courseName, Credit Hours: $creditHours");
}