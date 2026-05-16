import 'package:share_kun/generated/assets.gen.dart';

String bankLogo(String bank) {
  switch (bank) {
    case 'BCEL':
      return Assets.icon.bcelLogo.path;
    case 'LDB':
      return Assets.icon.ldbLogo.path;
    default:
      return Assets.icon.bcelLogo.path;
  }
}