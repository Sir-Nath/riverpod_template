class AuthState {
  final bool status;
  final String? error;

  AuthState({
    required this.status,
    required this.error,
  });

  factory AuthState.initial() {
    return AuthState(
      error: null,
      status: false,
    );
  }

  AuthState copyWith({
    bool? status,
    String? error,
  }) {
    return AuthState(
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}
