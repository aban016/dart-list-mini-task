import 'dart:io';

void main() {
  List<String> userList = [];

  print("Welcome to User List Manager!");

  while (true) {
    print("Select Action:");
    print("1. Add a user");
    print("2. View users");
    print("3. View user count");
    print("4. Delete user");
    print("5. Exit");

    stdout.write("Enter your choice (1-5): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addUser(userList);
        break;
      case '2':
        viewUser(userList);
        break;
      case '3':
        countUser(userList);
        break;
      case '4':
        deleteUser(userList);
        break;
      case '5':
        print("Goodbye!");
        exit(0);
      default:
        print("Invalid choice. Please enter a number between 1 and 4.");
    }
  }
}

void addUser(List<String> userList) {
  print("Add User");
  stdout.write("Enter a user name: ");
  String userName = stdin.readLineSync()!;
  userList.add(userName);
  print("User added successfully!");
  if (userList.isEmpty) {
    print("Empty User list");
  } else {
    print("\nUser List:");
    for (String user in userList) {
      print("- $user");
    }
  }
}

void viewUser(List<String> userList) {
  print("All Users list");
  if (userList.isEmpty) {
    print("Empty User list");
  } else {
    print("\nUser List:");
    for (String user in userList) {
      print("- $user");
    }
  }
}

void countUser(List<String> userList) {
  print("Total Users: ${userList.length}");
}

void deleteUser(List<String> userList) {
  print("Delete User");
  stdout.write("Enter a user name: ");
  String userName = stdin.readLineSync()!;
  if (userList.contains(userName)) {
    userList.remove(userName);
    print("User deleted successfully!");
    if (userList.isEmpty) {
      print("Empty User list");
    } else {
      print("\nUser List:");
      for (String user in userList) {
        print("- $user");
      }
    }
  } else {
    print("User not found!");
  }
}
