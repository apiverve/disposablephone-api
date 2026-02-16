/// Response models for the Disposable Phone Number Checker API.

/// API Response wrapper.
class DisposablephoneResponse {
  final String status;
  final dynamic error;
  final DisposablephoneData? data;

  DisposablephoneResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DisposablephoneResponse.fromJson(Map<String, dynamic> json) => DisposablephoneResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DisposablephoneData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Disposable Phone Number Checker API.

class DisposablephoneData {
  String? phone;
  bool? isDisposable;
  String? firstSeen;

  DisposablephoneData({
    this.phone,
    this.isDisposable,
    this.firstSeen,
  });

  factory DisposablephoneData.fromJson(Map<String, dynamic> json) => DisposablephoneData(
      phone: json['phone'],
      isDisposable: json['isDisposable'],
      firstSeen: json['firstSeen'],
    );
}

class DisposablephoneRequest {
  String phone;

  DisposablephoneRequest({
    required this.phone,
  });

  Map<String, dynamic> toJson() => {
      'phone': phone,
    };
}
