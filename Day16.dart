
class StepsTracker {
  int steps;

  StepsTracker(this.steps);

  void displaySteps() {
    print("Steps recorded: $steps");
  }
}

class CaloriesTracker {
  double calories;

  CaloriesTracker.fromSteps(StepsTracker tracker) {
    calories = tracker.steps * 0.04;
  }

  void displayCalories() {
    print("Estimated calories burned: $calories");
  }
}
void main() {
  StepsTracker stepsData = StepsTracker(5000);
  stepsData.displaySteps();

  CaloriesTracker caloriesData = CaloriesTracker.fromSteps(stepsData);
  caloriesData.displayCalories();
}