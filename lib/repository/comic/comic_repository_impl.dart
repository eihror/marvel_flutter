import 'package:movies/provider/comic/comic_provider.dart';
import 'package:movies/repository/comic/comic_repository.dart';

class ComicRepositoryImpl implements ComicRepository {
  ComicRepositoryImpl({
    required this.provider,
  });

  final ComicProvider provider;

  @override
  Future<void> fetchCreators() => provider.fetchCreators();
}
