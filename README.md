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
<img width="1987" height="297" alt="image" src="https://github.com/user-attachments/assets/fea6d9e4-9ff1-48d6-8d7e-c0a9431f295c" />


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

<img width="2436" height="258" alt="image" src="https://github.com/user-attachments/assets/45e6b1b9-4011-473c-b17f-e20d919dd7e1" />

### Step 3: Search for Students Above 80
```dart
  List<Student> studentsAbove80 = getStudentsWithGradeAboveOrLess(students, 80.0, true);
  print("Students with grade above 80:");
  printStudentsDetails(studentsAbove80);
```
<img width="2452" height="221" alt="image" src="https://github.com/user-attachments/assets/baba3982-62c5-4302-9dc9-4e606d95073e" />

### Step 4: Search for Students Below 80
```dart
  List<Student> studentsBelow80 = getStudentsWithGradeAboveOrLess(students, 80.0, false);
  print("\nStudents with grade below 80:");
  printStudentsDetails(studentsBelow80);
 
```
<img width="2352" height="139" alt="image" src="https://github.com/user-attachments/assets/fcb33d34-b0b6-49b3-89cf-3dd5cd584dc9" />
