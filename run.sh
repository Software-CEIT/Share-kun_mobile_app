# If there have error "E Failed to compile build script." try to clear cach first
# fvm flutter clean
# rm -rf pubspec.lock
# rm -rf .dart_tool

# fvm use 3.35.0
fvm flutter clean
fvm flutter pub get
fvm flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/generated -o locale_keys.g.dart
fvm dart pub run build_runner build --delete-conflicting-outputs
# fvm flutter pub run flutter_launcher_icons

# cd ios 
# pod install
# flutter build ios --config-only --release --flavor dev -t lib/main_dev.dart 
# fvm flutter build apk --flavor dev -t lib/main_dev.dart


# Prompt to paste:
# "Implement a full 5-layer data flow for fetching data from an API. Requirements:

# Feature name: [feature_name] (e.g. home/service)
# Endpoint: [HTTP_METHOD] [path] (e.g. POST /jobs/list or GET /jobs/list)
# Provide one sample JSON response (paste actual JSON).
# Use these tech choices: freezed + json_serializable for models/entities, retrofit + dio for network, dartz Either<Failure,T> for error returns, and injectable for DI.
# Output structure and file locations (use these or adapt):
# Data model (freezed + fromJson): lib/features/[feature_name]/data/model/[entity]_model.dart
# Domain entity (freezed): lib/features/[feature_name]/domain/entities/[entity]_entities.dart
# Remote datasource interface + impl: lib/features/[feature_name]/data/datasources/[feature]_remote_datasource.dart
# Use RestClient call and .withRemoteHandling(tag: '...') if available.
# Method signature should match endpoint and return either List<[Model]> or wrapper model as appropriate.
# Repository interface (domain): lib/features/[feature_name]/domain/repository/[feature]_repository.dart
# Return type: Future<Either<Failure, List<[Entity]>>> (or wrapper entity) — specify which.
# Repository implementation (data): lib/features/[feature_name]/data/repositories_impl/[feature]_repository_impl.dart
# Annotate @LazySingleton(as: [Repository])
# Map model → entity (prefer Entity.fromModel(model) factory).
# Usecase (domain): lib/features/[feature_name]/domain/usecase/get_[feature]_usecase.dart
# Annotate @lazySingleton and expose Future<Either<Failure, List<[Entity]>>> call() (or wrapper).
# Add Entity.fromModel(Model m) factory in the domain entity file.
# Update network interface: network_call.dart to add the endpoint method returning the model/wrapper.
# Update DI: ensure repository impl and datasource are registered — either add @LazySingleton annotations or tell me where to register; suggest running flutter pub run build_runner build --delete-conflicting-outputs to regenerate injectable config.
# Ensure all imports follow project style and path structure.
# Error handling: return 
# Left(ServerFailure(e.toString())) on unexpected exceptions.


# Fix ApiPath syntax error + add labourList

# Add getLabourList to RestClient

# Extend datasource, repository, repository_impl

# Create GetLabourListUsecase

# Update HomeState + HomeCubit