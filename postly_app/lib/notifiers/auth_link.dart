import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_transform_link/gql_transform_link.dart';
import "package:gql_link/gql_link.dart";
import "package:gql_exec/gql_exec.dart";

class AuthLink extends Link {
  final Ref ref;
  late Link _link;
  String? _token;

  AuthLink(this.ref) {
    _link = TransformLink(requestTransformer: transformRequest);
  }

  Future<void> fetchToken() async {
    _token = "blabla";
  }

  Request transformRequest(Request request) {
    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...headers?.headers ?? <String, String>{},
          if (_token != null) "Authorization": "Bearer $_token",
        },
      ),
    );
  }

  @override
  Stream<Response> request(Request request, [forward]) async* {
    await fetchToken();
    yield* _link.request(request, forward);
  }
}
