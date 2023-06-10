import 'package:get/get.dart';
import 'package:movies/controller/home/home_controller.dart';
import 'package:movies/helper/helper_impl.dart';
import 'package:movies/network/network.dart';
import 'package:movies/provider/comic/comic_provider_impl.dart';
import 'package:movies/repository/comic/comic_repository_impl.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        comicRepository: ComicRepositoryImpl(
          provider: ComicProviderImpl(
            network: Network(),
            helper: HelperImpl()
          ),
        ),
      ),
    );
  }
}
