class ChatMassageModel {
  final String role;
  final List<ChatPartmodel> parts;

  ChatMassageModel({
    required this.role,
    required this.parts,
  });

  factory ChatMassageModel.fromJson(Map<String, dynamic> json) => ChatMassageModel(
    role: json['role'] as String,
    parts: List<ChatPartmodel>.from(
      json['parts'].map((x) => ChatPartmodel.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    'role': role,
    'parts': List<dynamic>.from(parts.map((x) => x.toJson())),
  };
}

class ChatPartmodel {
  final String text;

  ChatPartmodel({
    required this.text,
  });

  factory ChatPartmodel.fromJson(Map<String, dynamic> json) => ChatPartmodel(
    text: json['text'] as String,
  );

  Map<String, dynamic> toJson() => {
    'text': text,
  };
}
