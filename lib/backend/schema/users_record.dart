import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  
  String get email;

  
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  
  String get uid;

  
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  
  @BuiltValueField(wireName: 'user_type')
  String get userType;

  
  @BuiltValueField(wireName: 'accepted_order')
  String get acceptedOrder;

  
  @BuiltValueField(wireName: 'emails')
  BuiltList<String> get emails;

  
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..phoneNumber = ''
    ..photoUrl = ''
    ..userType = ''
    ..acceptedOrder = ''
    ..emails = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  String? phoneNumber,
  String? photoUrl,
  DateTime? createdTime,
  String? userType,
  String? acceptedOrder,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..uid = uid
          ..phoneNumber = phoneNumber
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..userType = userType
          ..acceptedOrder = acceptedOrder));
