import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:postly_app/notifiers/_consts.dart';
import 'package:postly_app/notifiers/auth_link.dart';

final graphqlClientProvider = Provider((ref) {
  final link = HttpLink(graphApiUrl);
  return Client(link: Link.concat(AuthLink(ref), link), defaultFetchPolicies: {
    OperationType.query: FetchPolicy.NoCache,
  });
});
