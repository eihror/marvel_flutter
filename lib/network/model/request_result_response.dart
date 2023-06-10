class RequestResultResponse<T> {
  const RequestResultResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
  });

  final T? data;
  final int? statusCode;
  final String? statusMessage;
}
