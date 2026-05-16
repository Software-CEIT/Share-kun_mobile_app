import 'package:injectable/injectable.dart';
import 'package:share_kun/features/home/domain/repository/home_repository.dart';

@lazySingleton
class AddRecentSearchUsecase {
  final HomeRepository _repo;
  AddRecentSearchUsecase(this._repo);

  // Future<void> call(String query) async {
  //   return await _repo.addRecentSearch(query);
  // }
}
