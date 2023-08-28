class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void addCourse(Course course) {
    daftarCourse.add(course);
  }

  void removeCourse(Course course) {
    daftarCourse.remove(course);
  }

  void viewCourses() {
    if (daftarCourse.isEmpty) {
      print("No courses added.");
    } else {
      print("Courses:");
      for (var i = 0; i < daftarCourse.length; i++) {
        print("${i + 1}. ${daftarCourse[i].judul}");
      }
    }
  }
}

void main() {
  Course course1 = Course("matematika", "kalkulus dan aljabar");
  Course course2 = Course("ipa", "biologi dan fisika");

  Student student = Student("DWi", "kelas A");

  student.addCourse(course1);
  student.addCourse(course2);

  print("${student.nama} courses:");
  student.viewCourses();

  student.removeCourse(course1);

  print("setelah hapus course 1 :");
  student.viewCourses();
}
