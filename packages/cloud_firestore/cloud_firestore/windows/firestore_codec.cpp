#include "firestore_codec.h"

#include "firebase/firestore/field_value.h"
#include "firebase/firestore/timestamp.h"
#include "firebase/firestore/field_path.h"
#include "firebase/firestore/geo_point.h"
#include "firebase/firestore.h"

#include <map>
#include <optional>
#include <string>
#include <memory>

using firebase::firestore::FieldValue;
using firebase::Timestamp;
using firebase::firestore::FieldPath;
using firebase::firestore::GeoPoint;
using firebase::firestore::DocumentReference;
using firebase::firestore::Firestore;

using flutter::EncodableValue;
using flutter::CustomEncodableValue;

cloud_firestore_windows::FirestoreCodec::FirestoreCodec() {}

void cloud_firestore_windows::FirestoreCodec::WriteValue(
    const flutter::EncodableValue& value,
    flutter::ByteStreamWriter* stream) const {

  flutter::StandardCodecSerializer::WriteValue(value, stream);
}

flutter::EncodableValue
cloud_firestore_windows::FirestoreCodec::ReadValueOfType(
    uint8_t type, flutter::ByteStreamReader* stream) const {
  switch (type) {
    case DATA_TYPE_DATE_TIME: {
      int64_t value;
      stream->ReadBytes(reinterpret_cast<uint8_t*>(&value),
                        8);  // Read 8 bytes into value

      return CustomEncodableValue(FieldValue::Timestamp(Timestamp(value, 0)));
    }

    case DATA_TYPE_TIMESTAMP: {
      int64_t seconds;
      int nanoseconds;

      stream->ReadBytes(reinterpret_cast<uint8_t*>(&seconds),
                        8); 
            stream->ReadBytes(reinterpret_cast<uint8_t*>(&nanoseconds), 4); 

      return CustomEncodableValue(
          FieldValue::Timestamp(Timestamp(seconds, nanoseconds)));
    }
    case DATA_TYPE_GEO_POINT: {
      double latitude;
      double longitude;

      stream->ReadAlignment(8);
      stream->ReadBytes(reinterpret_cast<uint8_t*>(&latitude), 8);
      stream->ReadBytes(reinterpret_cast<uint8_t*>(&longitude), 8);

      return CustomEncodableValue(
          FieldValue::GeoPoint(GeoPoint(latitude, longitude)));
    }


    case DATA_TYPE_FIELD_PATH: {
      size_t length = flutter::StandardCodecSerializer::ReadSize(stream);
      std::vector<std::string> array;

      for (uint32_t i = 0; i < length; ++i) {
        array.push_back(std::get<std::string>(FirestoreCodec::ReadValue(stream)));
      }

      FieldPath fieldPath(array);
      return CustomEncodableValue(fieldPath);
    }

                             case DATA_TYPE_BLOB: {
      // Assume that readSize and ReadBytes are defined to read the blob's size
      // and data
      size_t length = flutter::StandardCodecSerializer::ReadSize(stream);
      std::vector<uint8_t> blobData(length);
      stream->ReadBytes(blobData.data(), length);

      return CustomEncodableValue(FieldValue::Blob(blobData.data(), length));
    }

    case DATA_TYPE_ARRAY_UNION: {
      const std::vector<FieldValue>& arrayUnionValue =
          std::any_cast<std::vector<FieldValue>>(
              std::get<CustomEncodableValue>(
          FirestoreCodec::ReadValue(stream)));
      return CustomEncodableValue(FieldValue::ArrayUnion(arrayUnionValue));
    }

    case DATA_TYPE_ARRAY_REMOVE: {
      const std::vector<FieldValue>& arrayRemoveValue =
          std::any_cast<std::vector<FieldValue>>(std::get<CustomEncodableValue>(
              FirestoreCodec::ReadValue(stream)));
      return CustomEncodableValue(FieldValue::ArrayRemove(arrayRemoveValue));
    }

    case DATA_TYPE_DELETE: {
      return CustomEncodableValue(FieldValue::Delete());
    }

    case DATA_TYPE_SERVER_TIMESTAMP: {
      return CustomEncodableValue(FieldValue::ServerTimestamp());
    }

    case DATA_TYPE_INCREMENT_DOUBLE: {
      double incrementValue = stream->ReadDouble();
      return CustomEncodableValue(FieldValue::Increment(incrementValue));
    }

    case DATA_TYPE_INCREMENT_INTEGER: {
      int incrementValue = stream->ReadInt32();
      return CustomEncodableValue(FieldValue::Increment(incrementValue));
    }

    case DATA_TYPE_DOCUMENT_ID: {
      return CustomEncodableValue(FieldPath::DocumentId());
    }

    //case DATA_TYPE_FIRESTORE_INSTANCE: {
    //  return CustomEncodableValue(ReadFirestoreInstance(stream));
    //}

    //case DATA_TYPE_FIRESTORE_QUERY: {
    //  return CustomEncodableValue(ReadFirestoreQuery(stream));
    //}

    //case DATA_TYPE_FIRESTORE_SETTINGS: {
    //  // Similar logic to read Firestore settings
    //  return CustomEncodableValue(ReadFirestoreSettings(stream));
    //}

    case DATA_TYPE_NAN: {
      return CustomEncodableValue(std::nan(""));
    }

    case DATA_TYPE_INFINITY: {
      return CustomEncodableValue(std::numeric_limits<double>::infinity());
    }

    case DATA_TYPE_NEGATIVE_INFINITY: {
      return CustomEncodableValue(-std::numeric_limits<double>::infinity());
    }

  }
  return flutter::StandardCodecSerializer::ReadValueOfType(type, stream);
}
