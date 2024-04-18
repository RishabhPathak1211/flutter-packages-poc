import 'package:package1/package1_bootstrap.dart';
import 'package:package2/package2_bootstrap.dart';

Future<void> initializeBootstraps() async {
  await Package1Bootstrap().init();
  await Package2Bootstrap().init();
}
