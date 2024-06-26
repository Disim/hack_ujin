// ignore_for_file: constant_identifier_names

abstract class Constants {
  static const SERVER_URL = 'https://apidsds.ru:7085/';
  static const API_VERSION = 'api/v1/';

  static const BASE_URL = '$SERVER_URL$API_VERSION';
  static const IMAGES_PATH = 'images/';
}

abstract class HttpHeaders {
  static const accessToken = 'Authorization';
  static const refresh = 'refresh';
  static const refreshToken = 'refreshToken';
}

enum HttpMethod {
  GET,
  POST,
  DELETE,
  PUT,
  PATCH,
}

enum DataStatus {
  init,
  loading,
  success,
  error,
}
