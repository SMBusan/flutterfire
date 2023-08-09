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
    } else if (value is PigeonStorageReference) {
      buffer.putUint8(129);
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
        return PigeonStorageReference.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseStorageHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TestFirebaseStorageHostApiCodec();

  PigeonStorageReference getReferencebyPath(PigeonFirebaseApp app, String path);

  void setMaxOperationRetryTime(PigeonFirebaseApp app, int time);

  void setMaxUploadRetryTime(PigeonFirebaseApp app, int time);

  void setMaxDownloadRetryTime(PigeonFirebaseApp app, int time);

  Future<void> useStorageEmulator(PigeonFirebaseApp app, String host, int port);

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
          final PigeonStorageReference output = api.getReferencebyPath(arg_app!, arg_path!);
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
  }
}

class _TestFirebaseStorageReferenceHostApiCodec extends StandardMessageCodec {
  const _TestFirebaseStorageReferenceHostApiCodec();
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
    } else if (value is PigeonSettableMetadata) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonStorageReference) {
      buffer.putUint8(132);
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
        return PigeonSettableMetadata.decode(readValue(buffer)!);
      case 132: 
        return PigeonStorageReference.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseStorageReferenceHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TestFirebaseStorageReferenceHostApiCodec();

  PigeonStorageReference getParent(PigeonFirebaseApp app);

  PigeonStorageReference getRoot(PigeonFirebaseApp app);

  PigeonStorageReference getChild(PigeonFirebaseApp app, String path);

  Future<void> delete(PigeonFirebaseApp app);

  Future<String> getDownloadURL(PigeonFirebaseApp app);

  Future<PigeonFullMetaData> getMetaData(PigeonFirebaseApp app);

  Future<List<PigeonStorageReference?>> list(PigeonFirebaseApp app, PigeonListOptions options);

  Future<List<PigeonStorageReference?>> listAll(PigeonFirebaseApp app);

  List<int?> getData(PigeonFirebaseApp app, int maxSize);

  Future<PigeonFullMetaData> updateMetadata(PigeonFirebaseApp app, PigeonSettableMetadata metadata);

  static void setup(TestFirebaseStorageReferenceHostApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getParent', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getParent was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getParent was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference output = api.getParent(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getRoot', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getRoot was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getRoot was null, expected non-null PigeonFirebaseApp.');
          final PigeonStorageReference output = api.getRoot(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getChild', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getChild was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getChild was null, expected non-null PigeonFirebaseApp.');
          final String? arg_path = (args[1] as String?);
          assert(arg_path != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getChild was null, expected non-null String.');
          final PigeonStorageReference output = api.getChild(arg_app!, arg_path!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.delete', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.delete was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.delete was null, expected non-null PigeonFirebaseApp.');
          await api.delete(arg_app!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getDownloadURL', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getDownloadURL was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getDownloadURL was null, expected non-null PigeonFirebaseApp.');
          final String output = await api.getDownloadURL(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getMetaData', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getMetaData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getMetaData was null, expected non-null PigeonFirebaseApp.');
          final PigeonFullMetaData output = await api.getMetaData(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.list', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.list was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.list was null, expected non-null PigeonFirebaseApp.');
          final PigeonListOptions? arg_options = (args[1] as PigeonListOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.list was null, expected non-null PigeonListOptions.');
          final List<PigeonStorageReference?> output = await api.list(arg_app!, arg_options!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.listAll', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.listAll was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.listAll was null, expected non-null PigeonFirebaseApp.');
          final List<PigeonStorageReference?> output = await api.listAll(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getData', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getData was null, expected non-null PigeonFirebaseApp.');
          final int? arg_maxSize = (args[1] as int?);
          assert(arg_maxSize != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.getData was null, expected non-null int.');
          final List<int?> output = api.getData(arg_app!, arg_maxSize!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageReferenceHostApi.updateMetadata', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.updateMetadata was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.updateMetadata was null, expected non-null PigeonFirebaseApp.');
          final PigeonSettableMetadata? arg_metadata = (args[1] as PigeonSettableMetadata?);
          assert(arg_metadata != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageReferenceHostApi.updateMetadata was null, expected non-null PigeonSettableMetadata.');
          final PigeonFullMetaData output = await api.updateMetadata(arg_app!, arg_metadata!);
          return <Object?>[output];
        });
      }
    }
  }
}

class _TestFirebaseStorageTaskHostApiCodec extends StandardMessageCodec {
  const _TestFirebaseStorageTaskHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonFirebaseApp) {
      buffer.putUint8(128);
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
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseStorageTaskHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TestFirebaseStorageTaskHostApiCodec();

  Future<bool> pause(PigeonFirebaseApp app);

  Future<bool> resume(PigeonFirebaseApp app);

  Future<bool> cancel(PigeonFirebaseApp app);

  static void setup(TestFirebaseStorageTaskHostApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageTaskHostApi.pause', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageTaskHostApi.pause was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageTaskHostApi.pause was null, expected non-null PigeonFirebaseApp.');
          final bool output = await api.pause(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageTaskHostApi.resume', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageTaskHostApi.resume was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageTaskHostApi.resume was null, expected non-null PigeonFirebaseApp.');
          final bool output = await api.resume(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseStorageTaskHostApi.cancel', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FirebaseStorageTaskHostApi.cancel was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseStorageTaskHostApi.cancel was null, expected non-null PigeonFirebaseApp.');
          final bool output = await api.cancel(arg_app!);
          return <Object?>[output];
        });
      }
    }
  }
}
