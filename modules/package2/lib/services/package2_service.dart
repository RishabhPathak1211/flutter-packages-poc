import 'package:core/core.dart';

import '../repository/package2_repository.dart';

class Package1Service {
  void printMessage() {
    Package2Repository package1repository =
        ServiceFactory.fetchService<Package2Repository>();
    package1repository.printMessage();
  }
}
