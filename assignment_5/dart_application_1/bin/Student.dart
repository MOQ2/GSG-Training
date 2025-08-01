




class Student {
  static int _StudentCount = 0;
  late int _id  ; 
  late String _name ;
  late double _grade;
  String? _email;
  String? _address;
  String? _phone;

  Student({
    required String name,
    required double grade,
    String? email,
    String? address,
    String? phone,
  }) { 
    if (grade < 0 || grade > 100) {
      throw Exception("Invalid grade. It must be between 0 and 100.");
    }
    _StudentCount++;
    _id = _StudentCount; // Assuming ID starts from 1
    _name = name;
    _grade = grade;
    _email = email;
    _address = address;
    _phone = phone;
    
  }

  String get name => _name;
  double get grade => _grade;
  String? get email => _email;
  String? get address => _address;
  String? get phone => _phone;
  int get id => _id;
  static int get studentCount => _StudentCount;

  set name(String name) {
    _name = name;
  }
  // this should return an exception .
  set grade(double grade) {
    if (grade < 0 || grade > 100) {
      print("Invalid grade. It must be between 0 and 100.");
      return;
    }
    _grade = grade;
  }
  set email(String? email) {
    _email = email;
  }
  set address(String? address) {
    _address = address;
  }
  set phone(String? phone) {
    _phone = phone;
  }
  @override
  String toString() {
    return 'student_id : $_id, name: $_name, grade: $_grade, email: $_email, address: $_address, phone: $_phone , isPassed: ${isPassed()}';
  }
  
  bool isPassed() {
    return _grade >= 60;
  }
}

void printStudentsDetails(List<Student> students) {
  for (var student in students) {
    print(student);
  }
}

List<Student> getStudentsWithGradeAboveOrLess(List<Student> students, double grade , bool above) {
  return students.where((student) => above ? student.grade > grade : student.grade < grade).toList();
}

void main (){
  List<Student> students = [
    Student(name: "mohammed", grade: 85.0),
    Student(name: "omar", grade: 92.0),
    Student(name: "ahmad", grade: 78.0),
    Student(name: "qais", grade: 68.0),
  ];

  print("initial students:");
  printStudentsDetails(students);

  students[0].phone = "0560000000";
  students[0].email = "mohammed@gmail.com";
  students[0].address = "palestine";
  students[1].phone = "0560000000";
  students[1].email = "qady@gmail.com";
  students[2].phone = "0561111111";
  students[2].email = "ahmad@gmail.com";
  students[2].address = "jordan";
  students[3].phone = "0562222222";
  students[3].email = "qais@gmail.com";
  students[3].address = "palestine";


  print("\nUpdated students:");
  printStudentsDetails(students);

  print("\nStudents with grades above 80 and below 80:");

  List<Student> studentsAbove80 = getStudentsWithGradeAboveOrLess(students, 80.0, true);
  List<Student> studentsBelow80 = getStudentsWithGradeAboveOrLess(students, 80.0, false);

  print("Students with grade above 80:");
  printStudentsDetails(studentsAbove80);
  print("\nStudents with grade below 80:");
  printStudentsDetails(studentsBelow80);
  
}