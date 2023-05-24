
import 'package:tmail_ui_user/features/composer/domain/model/email_request.dart';
import 'package:tmail_ui_user/features/composer/domain/model/sending_email.dart';
import 'package:tmail_ui_user/features/mailbox/domain/model/create_new_mailbox_request.dart';

extension EmailRequestExtension on EmailRequest {
  SendingEmail toSendingEmail(String sendingId, {CreateNewMailboxRequest? mailboxRequest}) {
    return SendingEmail(
      sendingId: sendingId,
      email: email,
      emailActionType: emailActionType,
      sentMailboxId: sentMailboxId,
      emailIdDestroyed: emailIdDestroyed,
      emailIdAnsweredOrForwarded: emailIdAnsweredOrForwarded,
      identityId: identityId,
      mailboxNameRequest: mailboxRequest?.newName,
      creationIdRequest: mailboxRequest?.creationId
    );
  }
}