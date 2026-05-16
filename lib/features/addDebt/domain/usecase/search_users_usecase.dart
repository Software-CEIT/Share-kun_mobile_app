import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/user_search_entity.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class SearchUsersUsecase {
  final AddDebtRepository _repo;
  SearchUsersUsecase(this._repo);

  Future<List<UserSearchEntity>> call(String query) => _repo.searchUsers(query);
}
