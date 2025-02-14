class AuthService {
  Future<bool> login(String email, String password) async {
    // Call your backend API here and check if login is successful
    return email == "test@test.com" && password == "password123";
  }

  Future<bool> register(String email, String password) async {
    // Register the user (Mock implementation)
    return true;
  }
}
