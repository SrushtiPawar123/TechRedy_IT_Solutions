// Dart program: Task Prioritization System

class Task {
  String name;
  String priority;

  Task(this.name, this.priority);
}

void main() {
  // Sample list of tasks
  List<Task> tasks = [
    Task("Complete Flutter project", "High"),
    Task("Buy groceries", "Low"),
    Task("Prepare for hackathon", "High"),
    Task("Read cybersecurity article", "Medium"),
    Task("Update portfolio website", "Medium"),
  ];

  // Define priority order
  Map<String, int> priorityOrder = {
    "High": 1,
    "Medium": 2,
    "Low": 3,
  };

  // Sort tasks based on priority
  tasks.sort((a, b) =>
      priorityOrder[a.priority]!.compareTo(priorityOrder[b.priority]!));

  // Display sorted tasks
  print("📌 Sorted Task List by Priority:");
  for (var task in tasks) {
    print("- ${task.name} [${task.priority}]");
  }
}
