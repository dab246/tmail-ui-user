// Mocks generated by Mockito 5.0.10 from annotations
// in tmail_ui_user/test/features/thread/domain/usecases/get_emails_in_mailbox_interactor_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:jmap_dart_client/jmap/account_id.dart' as _i5;
import 'package:jmap_dart_client/jmap/core/filter/filter.dart' as _i8;
import 'package:jmap_dart_client/jmap/core/properties/properties.dart' as _i9;
import 'package:jmap_dart_client/jmap/core/sort/comparator.dart' as _i7;
import 'package:jmap_dart_client/jmap/core/state.dart' as _i11;
import 'package:jmap_dart_client/jmap/core/unsigned_int.dart' as _i6;
import 'package:jmap_dart_client/jmap/mail/mailbox/mailbox.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tmail_ui_user/features/thread/domain/model/email_response.dart'
    as _i4;
import 'package:tmail_ui_user/features/thread/domain/repository/thread_repository.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [ThreadRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockThreadRepository extends _i1.Mock implements _i2.ThreadRepository {
  MockThreadRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.EmailResponse> getAllEmail(_i5.AccountId? accountId,
          {int? position,
          _i6.UnsignedInt? limit,
          Set<_i7.Comparator>? sort,
          _i8.Filter? filter,
          _i9.Properties? propertiesCreated,
          _i9.Properties? propertiesUpdated,
          _i10.MailboxId? inMailboxId}) =>
      (super.noSuchMethod(
              Invocation.method(#getAllEmail, [
                accountId
              ], {
                #position: position,
                #limit: limit,
                #sort: sort,
                #filter: filter,
                #propertiesCreated: propertiesCreated,
                #propertiesUpdated: propertiesUpdated,
                #inMailboxId: inMailboxId
              }),
              returnValue: Stream<_i4.EmailResponse>.empty())
          as _i3.Stream<_i4.EmailResponse>);
  @override
  _i3.Stream<_i4.EmailResponse> refreshChanges(
          _i5.AccountId? accountId, _i11.State? currentState,
          {Set<_i7.Comparator>? sort,
          _i9.Properties? propertiesCreated,
          _i9.Properties? propertiesUpdated,
          _i10.MailboxId? inMailboxId}) =>
      (super.noSuchMethod(
              Invocation.method(#refreshChanges, [
                accountId,
                currentState
              ], {
                #sort: sort,
                #propertiesCreated: propertiesCreated,
                #propertiesUpdated: propertiesUpdated,
                #inMailboxId: inMailboxId
              }),
              returnValue: Stream<_i4.EmailResponse>.empty())
          as _i3.Stream<_i4.EmailResponse>);
}
