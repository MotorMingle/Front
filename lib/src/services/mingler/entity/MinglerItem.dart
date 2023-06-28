class MinglerTag {
  final String tag;

  const MinglerTag({
    required this.tag,
  });

  factory MinglerTag.fromJson(Map<String, dynamic> json) {
    return MinglerTag(
      tag: json['tag'],
    );
  }
}
