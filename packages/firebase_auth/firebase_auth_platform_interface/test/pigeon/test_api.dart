// Autogenerated from Pigeon (v9.2.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:firebase_auth_platform_interface/src/pigeon/messages.pigeon.dart';

class _TesFirebaseAuthHostApiCodec extends StandardMessageCodec {
  const _TesFirebaseAuthHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonActionCodeInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonActionCodeInfoData) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAdditionalUserInfo) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAuthCredential) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseApp) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorSession) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is PigeonPhoneMultiFactorAssertion) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserCredential) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserDetails) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserInfo) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonActionCodeInfo.decode(readValue(buffer)!);
      case 129:
        return PigeonActionCodeInfoData.decode(readValue(buffer)!);
      case 130:
        return PigeonAdditionalUserInfo.decode(readValue(buffer)!);
      case 131:
        return PigeonAuthCredential.decode(readValue(buffer)!);
      case 132:
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 133:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      case 134:
        return PigeonMultiFactorSession.decode(readValue(buffer)!);
      case 135:
        return PigeonPhoneMultiFactorAssertion.decode(readValue(buffer)!);
      case 136:
        return PigeonUserCredential.decode(readValue(buffer)!);
      case 137:
        return PigeonUserDetails.decode(readValue(buffer)!);
      case 138:
        return PigeonUserInfo.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TesFirebaseAuthHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TesFirebaseAuthHostApiCodec();

  Future<String> registerIdTokenListener(PigeonFirebaseApp app);

  Future<String> registerAuthStateListener(PigeonFirebaseApp app);

  Future<void> useEmulator(PigeonFirebaseApp app, String host, int port);

  Future<void> applyActionCode(PigeonFirebaseApp app, String code);

  Future<PigeonActionCodeInfo> checkActionCode(
      PigeonFirebaseApp app, String code);

  Future<void> confirmPasswordReset(
      PigeonFirebaseApp app, String code, String newPassword);

  Future<PigeonUserCredential> createUserWithEmailAndPassword(
      PigeonFirebaseApp app, String email, String password);

  Future<PigeonUserCredential> signInAnonymously(PigeonFirebaseApp app);

  Future<PigeonUserCredential> signInWithCredential(
      PigeonFirebaseApp app, Map<String?, Object?> input);

  Future<PigeonUserCredential> signInWithCustomToken(
      PigeonFirebaseApp app, String token);

  Future<PigeonUserCredential> signInWithEmailAndPassword(
      PigeonFirebaseApp app, String email, String password);

  static void setup(TesFirebaseAuthHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.registerIdTokenListener',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.registerIdTokenListener was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.registerIdTokenListener was null, expected non-null PigeonFirebaseApp.');
          final String output = await api.registerIdTokenListener(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.registerAuthStateListener',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.registerAuthStateListener was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.registerAuthStateListener was null, expected non-null PigeonFirebaseApp.');
          final String output = await api.registerAuthStateListener(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.useEmulator', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.useEmulator was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.useEmulator was null, expected non-null PigeonFirebaseApp.');
          final String? arg_host = (args[1] as String?);
          assert(arg_host != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.useEmulator was null, expected non-null String.');
          final int? arg_port = (args[2] as int?);
          assert(arg_port != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.useEmulator was null, expected non-null int.');
          await api.useEmulator(arg_app!, arg_host!, arg_port!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.applyActionCode', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.applyActionCode was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.applyActionCode was null, expected non-null PigeonFirebaseApp.');
          final String? arg_code = (args[1] as String?);
          assert(arg_code != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.applyActionCode was null, expected non-null String.');
          await api.applyActionCode(arg_app!, arg_code!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.checkActionCode', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.checkActionCode was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.checkActionCode was null, expected non-null PigeonFirebaseApp.');
          final String? arg_code = (args[1] as String?);
          assert(arg_code != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.checkActionCode was null, expected non-null String.');
          final PigeonActionCodeInfo output =
              await api.checkActionCode(arg_app!, arg_code!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.confirmPasswordReset', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.confirmPasswordReset was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.confirmPasswordReset was null, expected non-null PigeonFirebaseApp.');
          final String? arg_code = (args[1] as String?);
          assert(arg_code != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.confirmPasswordReset was null, expected non-null String.');
          final String? arg_newPassword = (args[2] as String?);
          assert(arg_newPassword != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.confirmPasswordReset was null, expected non-null String.');
          await api.confirmPasswordReset(arg_app!, arg_code!, arg_newPassword!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.createUserWithEmailAndPassword',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.createUserWithEmailAndPassword was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.createUserWithEmailAndPassword was null, expected non-null PigeonFirebaseApp.');
          final String? arg_email = (args[1] as String?);
          assert(arg_email != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.createUserWithEmailAndPassword was null, expected non-null String.');
          final String? arg_password = (args[2] as String?);
          assert(arg_password != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.createUserWithEmailAndPassword was null, expected non-null String.');
          final PigeonUserCredential output =
              await api.createUserWithEmailAndPassword(
                  arg_app!, arg_email!, arg_password!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.signInAnonymously', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInAnonymously was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInAnonymously was null, expected non-null PigeonFirebaseApp.');
          final PigeonUserCredential output =
              await api.signInAnonymously(arg_app!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCredential', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCredential was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCredential was null, expected non-null PigeonFirebaseApp.');
          final Map<String?, Object?>? arg_input =
              (args[1] as Map<Object?, Object?>?)?.cast<String?, Object?>();
          assert(arg_input != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCredential was null, expected non-null Map<String?, Object?>.');
          final PigeonUserCredential output =
              await api.signInWithCredential(arg_app!, arg_input!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCustomToken', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCustomToken was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCustomToken was null, expected non-null PigeonFirebaseApp.');
          final String? arg_token = (args[1] as String?);
          assert(arg_token != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCustomToken was null, expected non-null String.');
          final PigeonUserCredential output =
              await api.signInWithCustomToken(arg_app!, arg_token!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAuthHostApi.signInWithEmailAndPassword',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithEmailAndPassword was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithEmailAndPassword was null, expected non-null PigeonFirebaseApp.');
          final String? arg_email = (args[1] as String?);
          assert(arg_email != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithEmailAndPassword was null, expected non-null String.');
          final String? arg_password = (args[2] as String?);
          assert(arg_password != null,
              'Argument for dev.flutter.pigeon.FirebaseAuthHostApi.signInWithEmailAndPassword was null, expected non-null String.');
          final PigeonUserCredential output = await api
              .signInWithEmailAndPassword(arg_app!, arg_email!, arg_password!);
          return <Object?>[output];
        });
      }
    }
  }
}

class _TestMultiFactorUserHostApiCodec extends StandardMessageCodec {
  const _TestMultiFactorUserHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorSession) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonPhoneMultiFactorAssertion) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      case 129:
        return PigeonMultiFactorSession.decode(readValue(buffer)!);
      case 130:
        return PigeonPhoneMultiFactorAssertion.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestMultiFactorUserHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TestMultiFactorUserHostApiCodec();

  Future<void> enrollPhone(String appName,
      PigeonPhoneMultiFactorAssertion assertion, String? displayName);

  Future<PigeonMultiFactorSession> getSession(String appName);

  Future<void> unenroll(String appName, String? factorUid);

  Future<List<PigeonMultiFactorInfo?>> getEnrolledFactors(String appName);

  static void setup(TestMultiFactorUserHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.MultiFactorUserHostApi.enrollPhone', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.enrollPhone was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.enrollPhone was null, expected non-null String.');
          final PigeonPhoneMultiFactorAssertion? arg_assertion =
              (args[1] as PigeonPhoneMultiFactorAssertion?);
          assert(arg_assertion != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.enrollPhone was null, expected non-null PigeonPhoneMultiFactorAssertion.');
          final String? arg_displayName = (args[2] as String?);
          await api.enrollPhone(arg_appName!, arg_assertion!, arg_displayName);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.MultiFactorUserHostApi.getSession', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.getSession was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.getSession was null, expected non-null String.');
          final PigeonMultiFactorSession output =
              await api.getSession(arg_appName!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.MultiFactorUserHostApi.unenroll', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.unenroll was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.unenroll was null, expected non-null String.');
          final String? arg_factorUid = (args[1] as String?);
          await api.unenroll(arg_appName!, arg_factorUid);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.MultiFactorUserHostApi.getEnrolledFactors', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.getEnrolledFactors was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.MultiFactorUserHostApi.getEnrolledFactors was null, expected non-null String.');
          final List<PigeonMultiFactorInfo?> output =
              await api.getEnrolledFactors(arg_appName!);
          return <Object?>[output];
        });
      }
    }
  }
}

class _TestMultiFactoResolverHostApiCodec extends StandardMessageCodec {
  const _TestMultiFactoResolverHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonActionCodeInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonActionCodeInfoData) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAdditionalUserInfo) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAuthCredential) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseApp) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorSession) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is PigeonPhoneMultiFactorAssertion) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserCredential) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserDetails) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserInfo) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonActionCodeInfo.decode(readValue(buffer)!);
      case 129:
        return PigeonActionCodeInfoData.decode(readValue(buffer)!);
      case 130:
        return PigeonAdditionalUserInfo.decode(readValue(buffer)!);
      case 131:
        return PigeonAuthCredential.decode(readValue(buffer)!);
      case 132:
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 133:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      case 134:
        return PigeonMultiFactorSession.decode(readValue(buffer)!);
      case 135:
        return PigeonPhoneMultiFactorAssertion.decode(readValue(buffer)!);
      case 136:
        return PigeonUserCredential.decode(readValue(buffer)!);
      case 137:
        return PigeonUserDetails.decode(readValue(buffer)!);
      case 138:
        return PigeonUserInfo.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestMultiFactoResolverHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec =
      _TestMultiFactoResolverHostApiCodec();

  Future<Map<String?, Object?>> resolveSignIn(
      String resolverId, PigeonPhoneMultiFactorAssertion assertion);

  static void setup(TestMultiFactoResolverHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.MultiFactoResolverHostApi.resolveSignIn', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.MultiFactoResolverHostApi.resolveSignIn was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_resolverId = (args[0] as String?);
          assert(arg_resolverId != null,
              'Argument for dev.flutter.pigeon.MultiFactoResolverHostApi.resolveSignIn was null, expected non-null String.');
          final PigeonPhoneMultiFactorAssertion? arg_assertion =
              (args[1] as PigeonPhoneMultiFactorAssertion?);
          assert(arg_assertion != null,
              'Argument for dev.flutter.pigeon.MultiFactoResolverHostApi.resolveSignIn was null, expected non-null PigeonPhoneMultiFactorAssertion.');
          final Map<String?, Object?> output =
              await api.resolveSignIn(arg_resolverId!, arg_assertion!);
          return <Object?>[output];
        });
      }
    }
  }
}
