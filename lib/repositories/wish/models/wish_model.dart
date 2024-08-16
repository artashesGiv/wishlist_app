import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wish_model.g.dart';

@JsonSerializable()
class Wish extends Equatable {
  final int id;
  final String title;
  final String? description;
  final int? price;
  final String? link;

  const Wish({
    required this.id,
    required this.title,
    this.description,
    this.price,
    this.link,
  });

  factory Wish.fromJson(Map<String, dynamic> json) => _$WishFromJson(json);

  Map<String, dynamic> toJson() => _$WishToJson(this);

  @override
  List<Object?> get props => [id, title, description, price, link];
}
