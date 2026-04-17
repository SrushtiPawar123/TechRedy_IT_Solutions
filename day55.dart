// WeatherDataAnalyzer class
class WeatherDataAnalyzer {
  Map<String, Map<String, double>> weatherData = {};

  void addCityWeather(String city, double temperature, double humidity) {
    weatherData[city] = {
      'temperature': temperature,
      'humidity': humidity,
    };
    print('Weather data for $city added successfully!');
  }

  void showAllCities() {
    print('\nWeather Data for All Cities:');
    weatherData.forEach((city, data) {
      print(
          '$city -> Temperature: ${data['temperature']}°C, Humidity: ${data['humidity']}%');
    });
  }

  void findHottestCity() {
    if (weatherData.isEmpty) {
      print('No weather data available.');
      return;
    }

    String hottestCity = weatherData.keys.first;
    double maxTemp = weatherData[hottestCity]!['temperature']!;

    weatherData.forEach((city, data) {
      if (data['temperature']! > maxTemp) {
        hottestCity = city;
        maxTemp = data['temperature']!;
      }
    });

    print('\nHottest City: $hottestCity with $maxTemp°C');
  }

  void averageTemperature() {
    if (weatherData.isEmpty) {
      print('No weather data available.');
      return;
    }

    double totalTemp = 0;
    weatherData.forEach((city, data) {
      totalTemp += data['temperature']!;
    });

    double avgTemp = totalTemp / weatherData.length;
    print('\nAverage Temperature across all cities: ${avgTemp.toStringAsFixed(2)}°C');
  }
}

// Main function
void main() {
  WeatherDataAnalyzer analyzer = WeatherDataAnalyzer();

  // Adding city weather data
  analyzer.addCityWeather('Mumbai', 34.5, 70.0);
  analyzer.addCityWeather('Delhi', 40.2, 55.0);
  analyzer.addCityWeather('Bangalore', 29.8, 65.0);
  analyzer.addCityWeather('Chennai', 36.0, 60.0);

  // Display all data
  analyzer.showAllCities();

  // Find hottest city
  analyzer.findHottestCity();

  // Find average temperature
  analyzer.averageTemperature();
}
