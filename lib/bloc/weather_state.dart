part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {
  const WeatherState();
}

// first state
class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

// second state
class WeatherLoading extends WeatherState {
  const WeatherLoading();
}

// third state
class WeatherLoaded extends WeatherState {
  final Weather weather;

  const WeatherLoaded(this.weather);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherLoaded && other.weather == weather;
  }

  @override
  int get hashCode => weather.hashCode;
}

// fourth state
class WeatherError extends WeatherState {
  final String message;

  const WeatherError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
