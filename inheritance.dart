
/*
  Types of Inheritance
  1. Single - One Parent one child
  2. Multilevel = parent - child(parent) - child(parent)
  3. Multiple - multiple parent - one child  // This doesn't support in dart
  4. Hierarchical - one parent multiple child 
*/

class College {
  var c_name = "KLU";
  var c_code = "2678";
  var c_address = "Chennai";
}

class CSDepartment extends College {
  var dept_name = "B.Sc CS";
  var dept_block = "3rd Block";
}

class ITDepartment extends CSDepartment {
  var dept = "B.Sc IT";
  var deptBlock = "4th Block";
}

class Student extends ITDepartment {
  var rollNo;
  var name;

  Student(int rollNo, String name) {
    this.rollNo = rollNo;
    this.name = name;
  }

  void display() {
    print("Student name: ${name}");
    print("Student rollNo: ${rollNo}");
    print("Department name: ${dept_name}");
    print("Department Block: ${dept_block}");
    print("Nearby Department: ${dept}");
    print("Nearby Department Block: ${deptBlock}");
    print("College name: ${c_name}");
    print("College code: ${c_code}");
    print("College name: ${c_address}");
  }
}

void main() {
 var student1 = new Student(777, "Siva");
  student1.display();
}