// ignore_for_file: constant_identifier_names

abstract class Constants {
  static const SERVER_URL = 'https://89.23.115.103:7085/';
  static const API_VERSION = 'api/v1/';

  static const BASE_URL = '$SERVER_URL$API_VERSION';
  static const IMAGES_PATH = 'images/';
}

abstract class HttpHeaders {
  static const AccessToken = 'Authorization';
  static const RefreshToken = 'refresh';
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
