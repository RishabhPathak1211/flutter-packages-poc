import 'package:core/core.dart';

import 'repository/package1_repository.dart';
import 'repository/package1_repository_env1.dart';
import 'repository/package1_repository_env2.dart';

class Package1Bootstrap implements Bootstrap {
  @override
  Future<void> init() async {
    Package1Repository package1RepositoryEnv1 = Package1RepositoryEnv1();
    Package1Repository package1RepositoryEnv2 = Package1RepositoryEnv2();
    ServiceFactory.registerService<Package1Repository>(
        env: EnvironmentConstants.env1, serviceObject: package1RepositoryEnv1);
    ServiceFactory.registerService<Package1Repository>(
        env: EnvironmentConstants.env2, serviceObject: package1RepositoryEnv2);
  }
}
