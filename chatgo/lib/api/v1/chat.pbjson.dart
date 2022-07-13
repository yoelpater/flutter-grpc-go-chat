///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'google/protobuf/wrappers.pbjson.dart' as $0;
import 'google/protobuf/empty.pbjson.dart' as $1;

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhIKBHRleHQYASABKAlSBHRleHQ=');
const $core.Map<$core.String, $core.dynamic> ChatServiceBase$json = const {
  '1': 'ChatService',
  '2': const [
    const {'1': 'Send', '2': '.google.protobuf.StringValue', '3': '.google.protobuf.Empty', '4': const {}},
    const {'1': 'Subscribe', '2': '.google.protobuf.Empty', '3': '.v1.Message', '4': const {}, '6': true},
  ],
};

@$core.Deprecated('Use chatServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ChatServiceBase$messageJson = const {
  '.google.protobuf.StringValue': $0.StringValue$json,
  '.google.protobuf.Empty': $1.Empty$json,
  '.v1.Message': Message$json,
};

/// Descriptor for `ChatService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List chatServiceDescriptor = $convert.base64Decode('CgtDaGF0U2VydmljZRI+CgRTZW5kEhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1ZhbHVlGhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5IgASNAoJU3Vic2NyaWJlEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GgsudjEuTWVzc2FnZSIAMAE=');
