// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'display_name',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'phone_number',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'photo_url',
      serializers.serialize(object.photoUrl,
          specifiedType: const FullType(String)),
      'created_time',
      serializers.serialize(object.createdTime,
          specifiedType: const FullType(DateTime)),
      'user_type',
      serializers.serialize(object.userType,
          specifiedType: const FullType(String)),
      'accepted_order',
      serializers.serialize(object.acceptedOrder,
          specifiedType: const FullType(String)),
      'emails',
      serializers.serialize(object.emails,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType.nullable(Object)])),
    ];

    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'user_type':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'accepted_order':
          result.acceptedOrder = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'emails':
          result.emails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ]))! as DocumentReference<Object?>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String uid;
  @override
  final String phoneNumber;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final String userType;
  @override
  final String acceptedOrder;
  @override
  final BuiltList<String> emails;
  @override
  final DocumentReference<Object?> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {required this.email,
      required this.displayName,
      required this.uid,
      required this.phoneNumber,
      required this.photoUrl,
      required this.createdTime,
      required this.userType,
      required this.acceptedOrder,
      required this.emails,
      required this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'UsersRecord', 'email');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'UsersRecord', 'displayName');
    BuiltValueNullFieldError.checkNotNull(uid, r'UsersRecord', 'uid');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'UsersRecord', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(photoUrl, r'UsersRecord', 'photoUrl');
    BuiltValueNullFieldError.checkNotNull(
        createdTime, r'UsersRecord', 'createdTime');
    BuiltValueNullFieldError.checkNotNull(userType, r'UsersRecord', 'userType');
    BuiltValueNullFieldError.checkNotNull(
        acceptedOrder, r'UsersRecord', 'acceptedOrder');
    BuiltValueNullFieldError.checkNotNull(emails, r'UsersRecord', 'emails');
    BuiltValueNullFieldError.checkNotNull(
        reference, r'UsersRecord', 'reference');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        userType == other.userType &&
        acceptedOrder == other.acceptedOrder &&
        emails == other.emails &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, acceptedOrder.hashCode);
    _$hash = $jc(_$hash, emails.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('userType', userType)
          ..add('acceptedOrder', acceptedOrder)
          ..add('emails', emails)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  String? _acceptedOrder;
  String? get acceptedOrder => _$this._acceptedOrder;
  set acceptedOrder(String? acceptedOrder) =>
      _$this._acceptedOrder = acceptedOrder;

  ListBuilder<String>? _emails;
  ListBuilder<String> get emails =>
      _$this._emails ??= new ListBuilder<String>();
  set emails(ListBuilder<String>? emails) => _$this._emails = emails;

  DocumentReference<Object?>? _reference;
  DocumentReference<Object?>? get reference => _$this._reference;
  set reference(DocumentReference<Object?>? reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _userType = $v.userType;
      _acceptedOrder = $v.acceptedOrder;
      _emails = $v.emails.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'UsersRecord', 'email'),
              displayName: BuiltValueNullFieldError.checkNotNull(
                  displayName, r'UsersRecord', 'displayName'),
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, r'UsersRecord', 'uid'),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, r'UsersRecord', 'phoneNumber'),
              photoUrl: BuiltValueNullFieldError.checkNotNull(
                  photoUrl, r'UsersRecord', 'photoUrl'),
              createdTime: BuiltValueNullFieldError.checkNotNull(
                  createdTime, r'UsersRecord', 'createdTime'),
              userType: BuiltValueNullFieldError.checkNotNull(
                  userType, r'UsersRecord', 'userType'),
              acceptedOrder: BuiltValueNullFieldError.checkNotNull(
                  acceptedOrder, r'UsersRecord', 'acceptedOrder'),
              emails: emails.build(),
              reference: BuiltValueNullFieldError.checkNotNull(
                  reference, r'UsersRecord', 'reference'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emails';
        emails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
