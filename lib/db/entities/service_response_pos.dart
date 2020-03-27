class ServiceResponsePos{
  static const int NO_ERROR_CODE = 200;
  static const String NO_ERROR_MESSAGE = "Success";
  static const int TOKEN_ERROR_CODE = 401;
  static const String TOKEN_ERROR = "Token nije dostupan. Odjavite se iz aplikacije i ponovno prijavili da bi dohvatili token!";
  static const int FILE_DOWNLOAD_ERROR_CODE = 445;
  static const int UNKNOWN_ERROR_CODE = 444;
  static const String UNKNOWN_ERROR = "Nepoznata greška";

  int code = UNKNOWN_ERROR_CODE;
  String displayMessage = UNKNOWN_ERROR;
}
