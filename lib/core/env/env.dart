import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'AUTH_ENDPOINT')
  static const authEndpoint = _Env.authEndpoint;

  @EnviedField(varName: 'USER_ENDPOINT')
  static const userEndpoint = _Env.userEndpoint;

  @EnviedField(varName: 'ARTICLE_ENDPOINT')
  static const articleEndpoint = _Env.articleEndpoint;

  @EnviedField(varName: 'CLOUDINARY_URL', obfuscate: true)
  static final cloudinaryUrl = _Env.cloudinaryUrl;

  @EnviedField(varName: 'CLOUD_NAME', obfuscate: true)
  static final cloudName = _Env.cloudName;
}
