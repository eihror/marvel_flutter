import 'package:get/get.dart';
import 'package:movies/repository/comic/comic_repository.dart';

class HomeController extends GetxController {
  HomeController({
    required this.comicRepository,
  });

  final ComicRepository comicRepository;
}
