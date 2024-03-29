// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// ISO code for a supported language.
@JsonEnum(valueField: 'raw')
enum SupportedLanguage {
  af(r'af'),
  ar(r'ar'),
  az(r'az'),
  bg(r'bg'),
  bn(r'bn'),
  ca(r'ca'),
  cs(r'cs'),
  cy(r'cy'),
  da(r'da'),
  de(r'de'),
  el(r'el'),
  en(r'en'),
  eo(r'eo'),
  es(r'es'),
  et(r'et'),
  eu(r'eu'),
  fa(r'fa'),
  fi(r'fi'),
  fo(r'fo'),
  fr(r'fr'),
  ga(r'ga'),
  gl(r'gl'),
  he(r'he'),
  hi(r'hi'),
  hu(r'hu'),
  hy(r'hy'),
  id(r'id'),
  is_(r'is'),
  it(r'it'),
  ja(r'ja'),
  ka(r'ka'),
  kk(r'kk'),
  ko(r'ko'),
  ku(r'ku'),
  ky(r'ky'),
  lt(r'lt'),
  lv(r'lv'),
  mi(r'mi'),
  mn(r'mn'),
  mr(r'mr'),
  ms(r'ms'),
  mt(r'mt'),
  nb(r'nb'),
  nl(r'nl'),
  no(r'no'),
  ns(r'ns'),
  pl(r'pl'),
  ps(r'ps'),
  pt(r'pt'),
  ptBr(r'pt-br'),
  qu(r'qu'),
  ro(r'ro'),
  ru(r'ru'),
  sk(r'sk'),
  sq(r'sq'),
  sv(r'sv'),
  sw(r'sw'),
  ta(r'ta'),
  te(r'te'),
  th(r'th'),
  tl(r'tl'),
  tn(r'tn'),
  tr(r'tr'),
  tt(r'tt'),
  uk(r'uk'),
  ur(r'ur'),
  uz(r'uz'),
  zh(r'zh');

  const SupportedLanguage(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static SupportedLanguage fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}
