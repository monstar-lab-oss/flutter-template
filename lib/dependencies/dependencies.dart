import 'package:flutter_template/dependencies/data_module.dart';
import 'package:flutter_template/dependencies/domain_module.dart';
import 'package:flutter_template/dependencies/presentation_module.dart';
import 'package:flutter_template/presentation/app_flavor.dart';
import 'package:get_it/get_it.dart';

final GetIt dependencies = GetIt.instance;

class Dependencies {
  static Future<void> inject(AppFlavor flavor) async {
    dependencies.registerLazySingleton<AppFlavor>(() => flavor);

    await DataModule.inject();
    await DomainModule.inject();
    await PresentationModule.inject();
  }
}
