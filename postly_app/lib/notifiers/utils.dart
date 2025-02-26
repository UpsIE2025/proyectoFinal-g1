Future<T?> ignoreFutureError<T>(Future<T> fn) async {
  try {
    return await fn;
  } catch (_) {}
  return null;
}
