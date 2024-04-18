import 'package:core/core.dart';

import 'repository/package2_repository.dart';
import 'repository/package2_repository_env1.dart';
import 'repository/package2_repository_env2.dart';

class Package2Bootstrap implements Bootstrap {
  @override
  Future<void> init() async {
    Package2Repository package2RepositoryEnv1 = Package2RepositoryEnv1();
    Package2Repository package2RepositoryEnv2 = Package2RepositoryEnv2();
    ServiceFactory.registerService<Package2Repository>(
        env: EnvironmentConstants.env1, serviceObject: package2RepositoryEnv1);
    ServiceFactory.registerService<Package2Repository>(
        env: EnvironmentConstants.env2, serviceObject: package2RepositoryEnv2);
  }
}