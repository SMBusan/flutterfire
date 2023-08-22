// Autogenerated from Pigeon (v9.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.g.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface PigeonFirebaseApp ()
+ (PigeonFirebaseApp *)fromList:(NSArray *)list;
+ (nullable PigeonFirebaseApp *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonStorageReference ()
+ (PigeonStorageReference *)fromList:(NSArray *)list;
+ (nullable PigeonStorageReference *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonFullMetaData ()
+ (PigeonFullMetaData *)fromList:(NSArray *)list;
+ (nullable PigeonFullMetaData *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonListOptions ()
+ (PigeonListOptions *)fromList:(NSArray *)list;
+ (nullable PigeonListOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonSettableMetadata ()
+ (PigeonSettableMetadata *)fromList:(NSArray *)list;
+ (nullable PigeonSettableMetadata *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonTaskSnapShot ()
+ (PigeonTaskSnapShot *)fromList:(NSArray *)list;
+ (nullable PigeonTaskSnapShot *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonListResult ()
+ (PigeonListResult *)fromList:(NSArray *)list;
+ (nullable PigeonListResult *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation PigeonFirebaseApp
+ (instancetype)makeWithAppName:(NSString *)appName
    tenantId:(nullable NSString *)tenantId {
  PigeonFirebaseApp* pigeonResult = [[PigeonFirebaseApp alloc] init];
  pigeonResult.appName = appName;
  pigeonResult.tenantId = tenantId;
  return pigeonResult;
}
+ (PigeonFirebaseApp *)fromList:(NSArray *)list {
  PigeonFirebaseApp *pigeonResult = [[PigeonFirebaseApp alloc] init];
  pigeonResult.appName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.appName != nil, @"");
  pigeonResult.tenantId = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable PigeonFirebaseApp *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonFirebaseApp fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.appName ?: [NSNull null]),
    (self.tenantId ?: [NSNull null]),
  ];
}
@end

@implementation PigeonStorageReference
+ (instancetype)makeWithBucket:(NSString *)bucket
    fullPath:(NSString *)fullPath
    name:(NSString *)name {
  PigeonStorageReference* pigeonResult = [[PigeonStorageReference alloc] init];
  pigeonResult.bucket = bucket;
  pigeonResult.fullPath = fullPath;
  pigeonResult.name = name;
  return pigeonResult;
}
+ (PigeonStorageReference *)fromList:(NSArray *)list {
  PigeonStorageReference *pigeonResult = [[PigeonStorageReference alloc] init];
  pigeonResult.bucket = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.bucket != nil, @"");
  pigeonResult.fullPath = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.fullPath != nil, @"");
  pigeonResult.name = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.name != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonStorageReference *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonStorageReference fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.bucket ?: [NSNull null]),
    (self.fullPath ?: [NSNull null]),
    (self.name ?: [NSNull null]),
  ];
}
@end

@implementation PigeonFullMetaData
+ (instancetype)makeWithMetadata:(nullable NSDictionary<NSString *, id> *)metadata {
  PigeonFullMetaData* pigeonResult = [[PigeonFullMetaData alloc] init];
  pigeonResult.metadata = metadata;
  return pigeonResult;
}
+ (PigeonFullMetaData *)fromList:(NSArray *)list {
  PigeonFullMetaData *pigeonResult = [[PigeonFullMetaData alloc] init];
  pigeonResult.metadata = GetNullableObjectAtIndex(list, 0);
  return pigeonResult;
}
+ (nullable PigeonFullMetaData *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonFullMetaData fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.metadata ?: [NSNull null]),
  ];
}
@end

@implementation PigeonListOptions
+ (instancetype)makeWithMaxResults:(nullable NSNumber *)maxResults
    pageToken:(nullable NSString *)pageToken {
  PigeonListOptions* pigeonResult = [[PigeonListOptions alloc] init];
  pigeonResult.maxResults = maxResults;
  pigeonResult.pageToken = pageToken;
  return pigeonResult;
}
+ (PigeonListOptions *)fromList:(NSArray *)list {
  PigeonListOptions *pigeonResult = [[PigeonListOptions alloc] init];
  pigeonResult.maxResults = GetNullableObjectAtIndex(list, 0);
  pigeonResult.pageToken = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable PigeonListOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonListOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.maxResults ?: [NSNull null]),
    (self.pageToken ?: [NSNull null]),
  ];
}
@end

@implementation PigeonSettableMetadata
+ (instancetype)makeWithCacheControl:(nullable NSString *)cacheControl
    contentDisposition:(nullable NSString *)contentDisposition
    contentEncoding:(nullable NSString *)contentEncoding
    contentLanguage:(nullable NSString *)contentLanguage
    contentType:(nullable NSString *)contentType
    customMetadata:(nullable NSDictionary<NSString *, NSString *> *)customMetadata {
  PigeonSettableMetadata* pigeonResult = [[PigeonSettableMetadata alloc] init];
  pigeonResult.cacheControl = cacheControl;
  pigeonResult.contentDisposition = contentDisposition;
  pigeonResult.contentEncoding = contentEncoding;
  pigeonResult.contentLanguage = contentLanguage;
  pigeonResult.contentType = contentType;
  pigeonResult.customMetadata = customMetadata;
  return pigeonResult;
}
+ (PigeonSettableMetadata *)fromList:(NSArray *)list {
  PigeonSettableMetadata *pigeonResult = [[PigeonSettableMetadata alloc] init];
  pigeonResult.cacheControl = GetNullableObjectAtIndex(list, 0);
  pigeonResult.contentDisposition = GetNullableObjectAtIndex(list, 1);
  pigeonResult.contentEncoding = GetNullableObjectAtIndex(list, 2);
  pigeonResult.contentLanguage = GetNullableObjectAtIndex(list, 3);
  pigeonResult.contentType = GetNullableObjectAtIndex(list, 4);
  pigeonResult.customMetadata = GetNullableObjectAtIndex(list, 5);
  return pigeonResult;
}
+ (nullable PigeonSettableMetadata *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonSettableMetadata fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.cacheControl ?: [NSNull null]),
    (self.contentDisposition ?: [NSNull null]),
    (self.contentEncoding ?: [NSNull null]),
    (self.contentLanguage ?: [NSNull null]),
    (self.contentType ?: [NSNull null]),
    (self.customMetadata ?: [NSNull null]),
  ];
}
@end

@implementation PigeonTaskSnapShot
+ (instancetype)makeWithBytesTransferred:(NSNumber *)bytesTransferred
    metadata:(nullable PigeonFullMetaData *)metadata
    state:(PigeonTaskState)state
    totalBytes:(NSNumber *)totalBytes {
  PigeonTaskSnapShot* pigeonResult = [[PigeonTaskSnapShot alloc] init];
  pigeonResult.bytesTransferred = bytesTransferred;
  pigeonResult.metadata = metadata;
  pigeonResult.state = state;
  pigeonResult.totalBytes = totalBytes;
  return pigeonResult;
}
+ (PigeonTaskSnapShot *)fromList:(NSArray *)list {
  PigeonTaskSnapShot *pigeonResult = [[PigeonTaskSnapShot alloc] init];
  pigeonResult.bytesTransferred = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.bytesTransferred != nil, @"");
  pigeonResult.metadata = [PigeonFullMetaData nullableFromList:(GetNullableObjectAtIndex(list, 1))];
  pigeonResult.state = [GetNullableObjectAtIndex(list, 2) integerValue];
  pigeonResult.totalBytes = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.totalBytes != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonTaskSnapShot *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonTaskSnapShot fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.bytesTransferred ?: [NSNull null]),
    (self.metadata ? [self.metadata toList] : [NSNull null]),
    @(self.state),
    (self.totalBytes ?: [NSNull null]),
  ];
}
@end

@implementation PigeonListResult
+ (instancetype)makeWithItems:(NSArray<PigeonStorageReference *> *)items
    pageToken:(nullable NSString *)pageToken
    prefixs:(NSArray<PigeonStorageReference *> *)prefixs {
  PigeonListResult* pigeonResult = [[PigeonListResult alloc] init];
  pigeonResult.items = items;
  pigeonResult.pageToken = pageToken;
  pigeonResult.prefixs = prefixs;
  return pigeonResult;
}
+ (PigeonListResult *)fromList:(NSArray *)list {
  PigeonListResult *pigeonResult = [[PigeonListResult alloc] init];
  pigeonResult.items = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.items != nil, @"");
  pigeonResult.pageToken = GetNullableObjectAtIndex(list, 1);
  pigeonResult.prefixs = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.prefixs != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonListResult *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonListResult fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.items ?: [NSNull null]),
    (self.pageToken ?: [NSNull null]),
    (self.prefixs ?: [NSNull null]),
  ];
}
@end

@interface FirebaseStorageHostApiCodecReader : FlutterStandardReader
@end
@implementation FirebaseStorageHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [PigeonFirebaseApp fromList:[self readValue]];
    case 129: 
      return [PigeonFullMetaData fromList:[self readValue]];
    case 130: 
      return [PigeonListOptions fromList:[self readValue]];
    case 131: 
      return [PigeonListResult fromList:[self readValue]];
    case 132: 
      return [PigeonSettableMetadata fromList:[self readValue]];
    case 133: 
      return [PigeonStorageReference fromList:[self readValue]];
    case 134: 
      return [PigeonTaskSnapShot fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FirebaseStorageHostApiCodecWriter : FlutterStandardWriter
@end
@implementation FirebaseStorageHostApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PigeonFirebaseApp class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonFullMetaData class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonListOptions class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonListResult class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonSettableMetadata class]]) {
    [self writeByte:132];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonStorageReference class]]) {
    [self writeByte:133];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonTaskSnapShot class]]) {
    [self writeByte:134];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FirebaseStorageHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FirebaseStorageHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FirebaseStorageHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FirebaseStorageHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FirebaseStorageHostApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FirebaseStorageHostApiCodecReaderWriter *readerWriter = [[FirebaseStorageHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void FirebaseStorageHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FirebaseStorageHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.registerStorageTask"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(registerStorageTaskApp:bucket:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(registerStorageTaskApp:bucket:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSString *arg_bucket = GetNullableObjectAtIndex(args, 1);
        [api registerStorageTaskApp:arg_app bucket:arg_bucket completion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.getReferencebyPath"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getReferencebyPathApp:path:bucket:error:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(getReferencebyPathApp:path:bucket:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSString *arg_path = GetNullableObjectAtIndex(args, 1);
        NSString *arg_bucket = GetNullableObjectAtIndex(args, 2);
        FlutterError *error;
        PigeonStorageReference *output = [api getReferencebyPathApp:arg_app path:arg_path bucket:arg_bucket error:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.setMaxOperationRetryTime"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setMaxOperationRetryTimeApp:time:error:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(setMaxOperationRetryTimeApp:time:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_time = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api setMaxOperationRetryTimeApp:arg_app time:arg_time error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.setMaxUploadRetryTime"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setMaxUploadRetryTimeApp:time:error:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(setMaxUploadRetryTimeApp:time:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_time = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api setMaxUploadRetryTimeApp:arg_app time:arg_time error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.setMaxDownloadRetryTime"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setMaxDownloadRetryTimeApp:time:error:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(setMaxDownloadRetryTimeApp:time:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_time = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api setMaxDownloadRetryTimeApp:arg_app time:arg_time error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.useStorageEmulator"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(useStorageEmulatorApp:host:port:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(useStorageEmulatorApp:host:port:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSString *arg_host = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_port = GetNullableObjectAtIndex(args, 2);
        [api useStorageEmulatorApp:arg_app host:arg_host port:arg_port completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceDelete"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceDeleteApp:reference:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceDeleteApp:reference:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        [api referenceDeleteApp:arg_app reference:arg_reference completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetDownloadURL"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceGetDownloadURLApp:reference:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceGetDownloadURLApp:reference:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        [api referenceGetDownloadURLApp:arg_app reference:arg_reference completion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetMetaData"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceGetMetaDataApp:reference:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceGetMetaDataApp:reference:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        [api referenceGetMetaDataApp:arg_app reference:arg_reference completion:^(PigeonFullMetaData *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceList"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceListApp:reference:options:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceListApp:reference:options:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        PigeonListOptions *arg_options = GetNullableObjectAtIndex(args, 2);
        [api referenceListApp:arg_app reference:arg_reference options:arg_options completion:^(PigeonListResult *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceListAll"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceListAllApp:reference:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceListAllApp:reference:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        [api referenceListAllApp:arg_app reference:arg_reference completion:^(PigeonListResult *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceGetData"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceGetDataApp:reference:maxSize:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceGetDataApp:reference:maxSize:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_maxSize = GetNullableObjectAtIndex(args, 2);
        [api referenceGetDataApp:arg_app reference:arg_reference maxSize:arg_maxSize completion:^(FlutterStandardTypedData *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.referenceUpdateMetadata"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(referenceUpdateMetadataApp:reference:metadata:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(referenceUpdateMetadataApp:reference:metadata:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonStorageReference *arg_reference = GetNullableObjectAtIndex(args, 1);
        PigeonSettableMetadata *arg_metadata = GetNullableObjectAtIndex(args, 2);
        [api referenceUpdateMetadataApp:arg_app reference:arg_reference metadata:arg_metadata completion:^(PigeonFullMetaData *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.taskPause"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(taskPauseApp:taskSnap:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(taskPauseApp:taskSnap:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonTaskSnapShot *arg_taskSnap = GetNullableObjectAtIndex(args, 1);
        [api taskPauseApp:arg_app taskSnap:arg_taskSnap completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.taskResume"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(taskResumeApp:taskSnap:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(taskResumeApp:taskSnap:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonTaskSnapShot *arg_taskSnap = GetNullableObjectAtIndex(args, 1);
        [api taskResumeApp:arg_app taskSnap:arg_taskSnap completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.FirebaseStorageHostApi.taskCancel"
        binaryMessenger:binaryMessenger
        codec:FirebaseStorageHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(taskCancelApp:taskSnap:completion:)], @"FirebaseStorageHostApi api (%@) doesn't respond to @selector(taskCancelApp:taskSnap:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        PigeonTaskSnapShot *arg_taskSnap = GetNullableObjectAtIndex(args, 1);
        [api taskCancelApp:arg_app taskSnap:arg_taskSnap completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
