
import 'package:model/model.dart';

abstract class AuthenticationOIDCRepository {
  Future<OIDCResponse> checkOIDCIsAvailable(OIDCRequest oidcRequest);

  Future<OIDCConfiguration> getOIDCConfiguration(Uri baseUri, OIDCResponse oidcResponse);

  Future<TokenOIDC> getTokenOIDC(String clientId, String redirectUrl, String discoveryUrl, List<String> scopes);

  Future<void> persistTokenOIDC(TokenOIDC tokenOidc);

  Future<TokenOIDC> getStoredTokenOIDC(String tokenIdHash);
}