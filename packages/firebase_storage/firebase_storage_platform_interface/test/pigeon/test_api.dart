// Autogenerated from Pigeon (v9.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:firebase_storage_platform_interface/src/pigeon/messages.pigeon.dart';

class _TestFirebaseStorageHostApiCodec extends StandardMessageCodec {
  const _TestFirebaseStorageHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonFirebaseApp) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFullMetaData) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonListOptions) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonListResult) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonSettableMetadata) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonStorageReference) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 129: 
        return PigeonFullMetaData.decode(readValue(buffer)!);
      case 130: 
        return PigeonListOptions.decode(readValue(buffer)!);
      case 131: 
        return PigeonListResult.decode(readValue(buffer)!);
      case 132: 
        return PigeonSettableMetadata.decode(readValue(buffer)!);
      case 133: 
        return PigeonStorageReference.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseStorageHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TestFirebaseStorageHostApiCodec();

  PigeonStorageReference getReferencebyPath(PigeonFirebaseApp app, String path, String? bucket);

  void setMaxOperationRetryTime(PigeonFirebaseApp app, int time);

  void setMaxUploadRetryTime(PigeonFirebaseApp app, int time);

  void setMaxDownloadRetryTime(PigeonFirebaseApp app, int time);

  Future<void> useStorageEmulator(PigeonFirebaseApp app, String host, int port);

  Future<void> referenceDelete(PigeonFirebaseApp app, PigeonStorageReference reference);

  Future<String> referenceGetDownloadURL(PigeonFirebaseApp app, PigeonStorageReference reference);

  Future<PigeonFullMetaData> referenceGetMetaData(PigeonFirebaseApp app, PigeonStorageReference reference);

  Future<PigeonListResult> referenceList(PigeonFirebaseApp app, PigeonStorageReference reference, PigeonListOptions options);

  Future<PigeonListResult> referenceListAll(PigeonFirebaseApp app, PigeonStorageReference reference);

  Future<Uint8List?> referenceGetData(PigeonFirebaseApp app, PigeonStorageReference reference, int maxSize);

  Future<String> referencePutData(PigeonFirebaseApp app, PigeonStorageReference reference, Uint8List data, PigeonSettableMetadata settableMetaData, int handle);

  Future<String> refrencePutString(PigeonFirebaseApp app, PigeonStorageReference reference, String data, int format, PigeonSettableMetadata settableMetaData, int handle);

  Future<String> referencePutFile(PigeonFirebaseApp app, PigeonStorageReference reference, String filePath, PigeonSettableMetadata settableMetaData, int handle);

  Future<String> referenceDownloadFile(PigeonFirebaseApp app, PigeonStorageReference reference, String filePath, int handle);

  Future<PigeonFullMetaData> referenceUpdateMetadata(PigeonFirebaseApp app, PigeonStorageReference reference, PigeonSettableMetadata metadata);

  Future<Map<String?, Object?>> taskPause(PigeonFirebaseApp app, int handle);

  Future<Map<String?, Object?>> taskResume(PigeonFirebaseApp app, int handle);

  Future<Map<String?, Object?>> taskCancel(PigeonFirebaseApp app, int handle);

  static void setup(TestFirebaseStorageHostApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.getReferencebyPath', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.getReferencebyPath was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.getReferencebyPath was null, expected non-null PigeonFirebaseApp.');
          final String? arg_path = (args[1] as String?);
          assert(arg_path != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.getReferencebyPath was null, expected non-null String.');
          final String? arg_bucket = (args[2] as String?);
          final PigeonStorageReference output = api.getReferencebyPath(arg_app!, arg_path!, arg_bucket);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.setMaxOperationRetryTime', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxOperationRetryTime was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxOperationRetryTime was null, expected non-null PigeonFirebaseApp.');
          final int? arg_time = (args[1] as int?);
          assert(arg_time != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxOperationRetryTime was null, expected non-null int.');
          api.setMaxOperationRetryTime(arg_app!, arg_time!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.setMaxUploadRetryTime', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxUploadRetryTime was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxUploadRetryTime was null, expected non-null PigeonFirebaseApp.');
          final int? arg_time = (args[1] as int?);
          assert(arg_time != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxUploadRetryTime was null, expected non-null int.');
          api.setMaxUploadRetryTime(arg_app!, arg_time!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.setMaxDownloadRetryTime', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxDownloadRetryTime was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxDownloadRetryTime was null, expected non-null PigeonFirebaseApp.');
          final int? arg_time = (args[1] as int?);
          assert(arg_time != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.setMaxDownloadRetryTime was null, expected non-null int.');
          api.setMaxDownloadRetryTime(arg_app!, arg_time!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.useStorageEmulator', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.useStorageEmulator was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.useStorageEmulator was null, expected non-null PigeonFirebaseApp.');
          final String? arg_host = (args[1] as String?);
          assert(arg_host != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.useStorageEmulator was null, expected non-null String.');
          final int? arg_port = (args[2] as int?);
          assert(arg_port != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.useStorageEmulator was null, expected non-null int.');
          await api.useStorageEmulator(arg_app!, arg_host!, arg_port!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceDelete', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDelete was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDelete was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDelete was null, expected non-null PigeonStorageReference.');
          await api.referenceDelete(arg_app!, arg_reference!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetDownloadURL', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetDownloadURL was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetDownloadURL was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetDownloadURL was null, expected non-null PigeonStorageReference.');
          final String output = await api.referenceGetDownloadURL(arg_app!, arg_reference!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetMetaData', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetMetaData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetMetaData was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetMetaData was null, expected non-null PigeonStorageReference.');
          final PigeonFullMetaData output = await api.referenceGetMetaData(arg_app!, arg_reference!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceList', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceList was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceList was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceList was null, expected non-null PigeonStorageReference.');
          final PigeonListOptions? arg_options = (args[2] as PigeonListOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceList was null, expected non-null PigeonListOptions.');
          final PigeonListResult output = await api.referenceList(arg_app!, arg_reference!, arg_options!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceListAll', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceListAll was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceListAll was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceListAll was null, expected non-null PigeonStorageReference.');
          final PigeonListResult output = await api.referenceListAll(arg_app!, arg_reference!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetData', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetData was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetData was null, expected non-null PigeonStorageReference.');
          final int? arg_maxSize = (args[2] as int?);
          assert(arg_maxSize != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetData was null, expected non-null int.');
          final Uint8List? output = await api.referenceGetData(arg_app!, arg_reference!, arg_maxSize!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData was null, expected non-null PigeonStorageReference.');
          final Uint8List? arg_data = (args[2] as Uint8List?);
          assert(arg_data != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData was null, expected non-null Uint8List.');
          final PigeonSettableMetadata? arg_settableMetaData = (args[3] as PigeonSettableMetadata?);
          assert(arg_settableMetaData != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData was null, expected non-null PigeonSettableMetadata.');
          final int? arg_handle = (args[4] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutData was null, expected non-null int.');
          final String output = await api.referencePutData(arg_app!, arg_reference!, arg_data!, arg_settableMetaData!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null, expected non-null PigeonStorageReference.');
          final String? arg_data = (args[2] as String?);
          assert(arg_data != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null, expected non-null String.');
          final int? arg_format = (args[3] as int?);
          assert(arg_format != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null, expected non-null int.');
          final PigeonSettableMetadata? arg_settableMetaData = (args[4] as PigeonSettableMetadata?);
          assert(arg_settableMetaData != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null, expected non-null PigeonSettableMetadata.');
          final int? arg_handle = (args[5] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.refrencePutString was null, expected non-null int.');
          final String output = await api.refrencePutString(arg_app!, arg_reference!, arg_data!, arg_format!, arg_settableMetaData!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile was null, expected non-null PigeonStorageReference.');
          final String? arg_filePath = (args[2] as String?);
          assert(arg_filePath != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile was null, expected non-null String.');
          final PigeonSettableMetadata? arg_settableMetaData = (args[3] as PigeonSettableMetadata?);
          assert(arg_settableMetaData != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile was null, expected non-null PigeonSettableMetadata.');
          final int? arg_handle = (args[4] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referencePutFile was null, expected non-null int.');
          final String output = await api.referencePutFile(arg_app!, arg_reference!, arg_filePath!, arg_settableMetaData!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceDownloadFile', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDownloadFile was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDownloadFile was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDownloadFile was null, expected non-null PigeonStorageReference.');
          final String? arg_filePath = (args[2] as String?);
          assert(arg_filePath != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDownloadFile was null, expected non-null String.');
          final int? arg_handle = (args[3] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceDownloadFile was null, expected non-null int.');
          final String output = await api.referenceDownloadFile(arg_app!, arg_reference!, arg_filePath!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.referenceUpdateMetadata', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceUpdateMetadata was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceUpdateMetadata was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference? arg_reference = (args[1] as PigeonStorageReference?);
          assert(arg_reference != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceUpdateMetadata was null, expected non-null PigeonStorageReference.');
          final PigeonSettableMetadata? arg_metadata = (args[2] as PigeonSettableMetadata?);
          assert(arg_metadata != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.referenceUpdateMetadata was null, expected non-null PigeonSettableMetadata.');
          final PigeonFullMetaData output = await api.referenceUpdateMetadata(arg_app!, arg_reference!, arg_metadata!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.taskPause', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskPause was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskPause was null, expected non-null PigeonFirebaseApp.');
          final int? arg_handle = (args[1] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskPause was null, expected non-null int.');
          final Map<String?, Object?> output = await api.taskPause(arg_app!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.taskResume', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskResume was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskResume was null, expected non-null PigeonFirebaseApp.');
          final int? arg_handle = (args[1] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskResume was null, expected non-null int.');
          final Map<String?, Object?> output = await api.taskResume(arg_app!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageHostApi.taskCancel', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskCancel was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskCancel was null, expected non-null PigeonFirebaseApp.');
          final int? arg_handle = (args[1] as int?);
          assert(arg_handle != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageHostApi.taskCancel was null, expected non-null int.');
          final Map<String?, Object?> output = await api.taskCancel(arg_app!, arg_handle!);
          return <Object?>[output];
        });
      }
    }
  }
}
