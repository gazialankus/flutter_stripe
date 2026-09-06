import 'package:stripe_js/stripe_api.dart';
import 'package:stripe_js/stripe_js.dart';
import 'dart:js_interop';

extension type StripeElements(JSObject o) implements JSObject, Elements {
  external StripeElement create(String type, [JSAny? options]);
  external StripeElement? getElement(String type);

  /// Deferred-intent flow only: validates the mounted elements and collects
  /// wallet data. Must resolve before `confirmSetup` / `confirmPayment` when
  /// the group was created without a client secret.
  /// Resolves to `{ error?: StripeError }`.
  external JSPromise<JSObject> submit();
}

extension type ElementChangeResponse._(JSObject o) {
  external ElementChangeResponse({
    String elementType,
    String brand,
    bool complete,
    bool empty,
    JSAny /*{ postalCode: string | number }|String*/ value,
    String country,
    String bankName,
    JSAny error,
  });
  external String elementType;
  external String brand;
  external bool complete;
  external bool empty;
  external JSAny /*{ postalCode: string | number }|String*/ get value;
  external String country;
  external String bankName;
  external JSAny error;
}

extension type ElementOptions._(JSObject o) {
  external ElementOptions({JSArray<Font> fonts, String locale});

  external JSArray<Font> fonts;
  external String locale;
}

enum ElementsType {
  card,
  cardNumber,
  cardExpiry,
  cardCvc,
  postalCode,
  paymentRequestButton,
  iban,
  idealBank,
}
