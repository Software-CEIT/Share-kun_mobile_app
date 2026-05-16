import 'dart:io';
import 'package:share_kun/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<ProfileEntity> getProfile();
  Future<ProfileEntity> updateProfile({String? name, File? avatar});
  Future<void> updateLanguage(String language);
}
