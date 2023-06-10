import 'package:movies/app_config.dart';
import 'package:movies/helper/helper.dart';
import 'package:movies/network/model/request_result_exception.dart';
import 'package:movies/network/rest_client_adapter.dart';
import 'package:movies/provider/comic/comic_provider.dart';

class ComicProviderImpl implements ComicProvider {
  final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

  ComicProviderImpl({
    required this.network,
    required this.helper,
  });

  final RestClientAdapter network;
  final Helper helper;

  @override
  Future<void> fetchCreators() async {
    try {
      final response = await network
          .get("/v1/public/comics", queryParameters: <String, dynamic>{
        "apikey": AppConfig.publicKey,
        "hash": helper.createHash(timestamp),
        "ts": timestamp
      });
    } on RequestResultException {
      rethrow;
    }
  }
}
