# Student Management System Demonstration



## Demonstration Steps

### Step 1: Print Initial Student Information
```dart
    List<Student> students = [
        Student(name: "mohammed", grade: 85.0),
        Student(name: "omar", grade: 92.0),
        Student(name: "ahmad", grade: 78.0),
        Student(name: "qais", grade: 68.0),
    ];
    print("initial students:");
    printStudentsDetails(students);

```
![alt text](image.png)

### Step 2: Update Student Information Using Setters
```dart
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
```
![alt text](image-1.png)

### Step 3: Search for Students Above 80
```dart
  List<Student> studentsAbove80 = getStudentsWithGradeAboveOrLess(students, 80.0, true);
  print("Students with grade above 80:");
  printStudentsDetails(studentsAbove80);
```
![alt text](image-2.png)
### Step 4: Search for Students Below 80
```dart
  List<Student> studentsBelow80 = getStudentsWithGradeAboveOrLess(students, 80.0, false);
  print("\nStudents with grade below 80:");
  printStudentsDetails(studentsBelow80);
 
```
![alt text](image-3.png)