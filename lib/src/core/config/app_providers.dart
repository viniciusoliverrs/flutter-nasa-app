import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../data/datasources/inasa_datasource.dart';
import '../../data/repositories/nasa_repository.dart';
import '../../data/services/http_service.dart';
import '../../domain/data/repositories/inasa_repository.dart';
import '../../domain/data/services/ihttp_service.dart';
import '../../external/datasources/nasa_datasource.dart';
import '../providers/nasa_provider.dart';

class AppProviders {
  static final providers = [
    Provider<IHttpService>(create: (_) => HttpService(Client())),
    Provider<INasaDatasource>(
        create: (context) => NasaDatasource(context.read())),
    Provider<INasaRepository>(
        create: (context) => NasaRepository(context.read())),
    ChangeNotifierProvider<NasaProvider>(
        create: (context) => NasaProvider(context.read())),
  ];
}
