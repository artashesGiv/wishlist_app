// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wish _$WishFromJson(Map<String, dynamic> json) => Wish(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$WishToJson(Wish instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'link': instance.link,
    };
