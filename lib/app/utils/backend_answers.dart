class BEAnswers {
  const BEAnswers._();
  static const String registrationSuccessful = 'Registration successful';
  static const String emailIsAlreadyTaken = 'Email is already taken';
  static const String confirmEmail = 'Please confirm your email address first';

  static Map<dynamic, String> answers = {
    registrationSuccessful: 'Регистрация прошла успешно',
    emailIsAlreadyTaken: 'Электронная почта уже занята',
    confirmEmail: 'Пожалуйста, подтвердите свой адрес электронной почты',
  };
}
