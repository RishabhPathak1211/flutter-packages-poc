import 'package:core/env_constants.dart';

class ServiceFactoryException implements Exception {
  String message;
  
  ServiceFactoryException({required this.message});
}


class ServiceFactory {
  static final Map<Type, Map<String, Object>> _serviceMapping = {};
  static String? _currentEnvironment;
  
  static void setEnvironment(EnvironmentConstants environment) {
    _currentEnvironment = environment.name;
  }
  
  static void registerService<T extends Object>({required EnvironmentConstants env, required T serviceObject}) {
    if (_serviceMapping[T] == null) {
      _serviceMapping[T] = {
        env.name: serviceObject
      };
    } else {
      _serviceMapping[T]![env.name] = serviceObject;
    }
  }
  
  static T fetchService<T>() {
    if (_serviceMapping[T] != null) {
      if (_serviceMapping[T]![_currentEnvironment] != null) {
        return _serviceMapping[T]![_currentEnvironment]! as T;
      }
      throw ServiceFactoryException(message: "Service ${T.toString()} not registered for environment $_currentEnvironment");
    }
    throw ServiceFactoryException(message: "Service ${T.toString()} not registered");
  }
}