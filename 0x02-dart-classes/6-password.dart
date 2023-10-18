class Password {
    String _password = '';

    Password({required String password}) {
        _password = password;
    }

    String toString() {
        return "Your Password is: $_password";
    }

    String get password {
        return _password;
    }

    set password(String newPassword) {
        _password = newPassword;
    }

    bool isValid() {
        if (_password.length >= 8) {
            if (_password.length <= 16) {
                if (_password.contains(RegExp(r'[0-9]'))) {
                    if (_password.contains(RegExp(r'[a-z]'))) {
                        if (_password.contains(RegExp(r'[A-Z]'))) {
                            return true;
                        }
                    }
                }
            }
        }

        return false;
    }
}
