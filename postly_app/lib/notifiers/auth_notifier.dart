import 'dart:async';

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:postly_app/models/user.dart';
import 'package:postly_app/notifiers/_consts.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    User? user,
  }) = _AuthState;

  bool get isLoggedIn => user != null;
}

class AuthNotifier extends AsyncNotifier<AuthState> {
  final _auth0 = Auth0(auth0Domain, auth0ClientId);

  @override
  FutureOr<AuthState> build() async {
    final isValid = await _auth0.credentialsManager.hasValidCredentials();
    if (isValid) {
      final creds = await _auth0.credentialsManager.credentials();
      return AuthState(user: userFromCreds(creds));
    }
    return const AuthState();
  }

  Future<void> login() async {
    final curState = await future;
    if (curState.isLoggedIn) return;
    final creds = await _auth0.webAuthentication(scheme: auth0Scheme).login();
    await _auth0.credentialsManager.storeCredentials(creds);
    state = AsyncValue.data(AuthState(
      user: userFromCreds(creds),
    ));
  }

  Future<String> getAccessToken() async {
    try {
      final creds = await _auth0.credentialsManager.credentials();
      return creds.accessToken;
    } catch (_) {
      return "";
    }
  }

  Future<void> logout() async {
    await _auth0.webAuthentication(scheme: auth0Scheme).logout();
    await _auth0.credentialsManager.clearCredentials();
    state = AsyncValue.data(const AuthState());
  }

  User userFromCreds(Credentials creds) {
    String name = "Sin Nombre";
    if (creds.user.name != null) {
      name = creds.user.name!;
    } else if (creds.user.nickname != null) {
      name = creds.user.nickname!;
    }
    return User(
      id: creds.user.sub,
      name: name,
      email: creds.user.email ?? "no-email@email.com",
    );
  }
}

final authNotifierProvider =
    AsyncNotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

final authUserProvider = Provider<User>((ref) {
  final s = ref.watch(authNotifierProvider);
  const empty = User(id: "", name: "", email: "");
  return s.maybeWhen(
    data: (authState) => authState.user ?? empty,
    orElse: () => empty,
  );
});
