
import 'package:core/core.dart';
import 'package:get/get.dart';
import 'package:tmail_ui_user/features/caching/account_cache_client.dart';
import 'package:tmail_ui_user/features/caching/caching_manager.dart';
import 'package:tmail_ui_user/features/caching/email_cache_client.dart';
import 'package:tmail_ui_user/features/caching/mailbox_cache_client.dart';
import 'package:tmail_ui_user/features/caching/recent_search_cache_client.dart';
import 'package:tmail_ui_user/features/caching/state_cache_client.dart';
import 'package:tmail_ui_user/features/caching/token_oidc_cache_client.dart';
import 'package:tmail_ui_user/features/cleanup/data/local/recent_search_cache_manager.dart';
import 'package:tmail_ui_user/features/login/data/local/account_cache_manager.dart';
import 'package:tmail_ui_user/features/login/data/local/token_oidc_cache_manager.dart';
import 'package:tmail_ui_user/features/mailbox/data/local/mailbox_cache_manager.dart';
import 'package:tmail_ui_user/features/thread/data/local/email_cache_manager.dart';

class LocalBindings extends Bindings {

  @override
  void dependencies() {
    _bindingDatabase();
    _bindingCaching();
  }

  void _bindingDatabase() {
    Get.put(DatabaseClient());
  }

  void _bindingCaching() {
    Get.put(MailboxCacheClient());
    Get.put(StateCacheClient());
    Get.put(MailboxCacheManager(Get.find<MailboxCacheClient>()));
    Get.put(EmailCacheClient());
    Get.put(EmailCacheManager(Get.find<EmailCacheClient>()));
    Get.put(RecentSearchCacheClient());
    Get.put(RecentSearchCacheManager(Get.find<RecentSearchCacheClient>()));
    Get.put(TokenOidcCacheClient());
    Get.put(TokenOidcCacheManager(Get.find<TokenOidcCacheClient>()));
    Get.put(AccountCacheClient());
    Get.put(AccountCacheManager(Get.find<AccountCacheClient>()));
    Get.put(CachingManager(
      Get.find<MailboxCacheClient>(),
      Get.find<StateCacheClient>(),
      Get.find<EmailCacheClient>(),
      Get.find<RecentSearchCacheClient>(),
      Get.find<TokenOidcCacheClient>(),
      Get.find<AccountCacheClient>()
    ));
  }
}