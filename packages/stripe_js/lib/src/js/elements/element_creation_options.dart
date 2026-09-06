// Module elements

import 'package:stripe_js/stripe_js.dart';
import 'dart:js_interop';

extension type JsElementsCreateOptions._(JSObject o) {
  /// Either [clientSecret] (an intent already exists) or the deferred-intent
  /// trio [mode] + [currency] (+ [amount] for `payment`/`subscription` mode),
  /// in which case the intent is created later and its client secret is
  /// handed to `confirmSetup` / `confirmPayment` after `elements.submit()`.
  /// See https://docs.stripe.com/js/elements_object/create_without_intent.
  external factory JsElementsCreateOptions({
    JSArray<Font>? fonts,
    String? locale,
    String? clientSecret,
    JsElementAppearance? appearance,
    String? customerSessionClientSecret,
    String loader,
    String? mode,
    String? currency,
    int? amount,
    String? setupFutureUsage,
    String? captureMethod,
    JSArray<JSString>? paymentMethodTypes,
    String? paymentMethodCreation,
  });

  external JSArray<Font> fonts;
  external String locale;
  external String clientSecret;
  external String customerSessionClientSecret;
  external JsElementAppearance appearance;
  external String? mode;
  external String? currency;
  external int? amount;
  external String? setupFutureUsage;
  external String? captureMethod;
  external JSArray<JSString>? paymentMethodTypes;
  external String? paymentMethodCreation;
}

extension type JsElementAppearance._(JSObject o) {
  factory JsElementAppearance({
    String? theme,
    Map<String, String>? variables,
    Map<String, Map<String, String>>? rules,
    String? labels,
  }) {
    return JsElementAppearance.__(
      theme: theme,
      variables: variables.jsify(),
      rules: rules.jsify(),
      labels: labels,
    );
  }

  external JsElementAppearance.__({
    String? theme,
    JSAny? variables,
    JSAny? rules,
    String? labels,
  });

  external String? theme;
  external JSAny? variables;
  external JSAny? rules;
  external String? labels;
}
