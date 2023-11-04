class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_US': Locales.en_US,
  };
}

class LocaleKeys {
  LocaleKeys._();
  static const welcome = 'welcome';
  static const field_username = 'field_username';
  static const field_password = 'field_password';
  static const field_fullname = 'field_fullname';
  static const field_email = 'field_email';
  static const screen_login = 'screen_login';
  static const screen_home = 'screen_home';
  static const screen_register = 'screen_register';
  static const screen_forget = 'screen_forget';
  static const button_login = 'button_login';
  static const button_register = 'button_register';
  static const button_click = 'button_click';
  static const button_change_color = 'button_change_color';
  static const button_forget_password = 'button_forget_password';
  static const button_reset_password = 'button_reset_password';
  static const button_logout = 'button_logout';
}

class Locales {
  static const en_US = {
    'welcome': 'Welcome',
    'field_username': 'Username / Email',
    'field_password': 'Password',
    'field_fullname': 'Full name',
    'field_email': 'Email Address',
    'screen_login': 'Login Screen',
    'screen_home': 'Home Screen',
    'screen_register': 'Register Screen',
    'screen_forget': 'Password Recovery Screen',
    'button_login': 'Login',
    'button_register': 'Register',
    'button_click': 'Click',
    'button_change_color': 'Change Color',
    'button_forget_password': 'Forget Password?',
    'button_reset_password': 'Reset Password',
    'button_logout': 'Logout',
  };
}
