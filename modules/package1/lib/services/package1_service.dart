import 'package:core/core.dart';

import '../repository/package1_repository.dart';

class Package1Service {
  void printMessage() {
    Package1Repository package1repository =
        ServiceFactory.fetchService<Package1Repository>();
    package1repository.printMessage();
  }
}
