class TravelRequirement {
  final String? origin;
  final String? destination;
  final String? date;
  final String? preferences;
  final bool isMissingInfo;
  final String? missingInfoPrompt;

  const TravelRequirement({
    this.origin,
    this.destination,
    this.date,
    this.preferences,
    this.isMissingInfo = false,
    this.missingInfoPrompt,
  });

  factory TravelRequirement.fromJson(Map<String, dynamic> json) {
    return TravelRequirement(
      origin: json['origin'] as String?,
      destination: json['destination'] as String?,
      date: json['date'] as String?,
      preferences: json['preferences'] as String?,
      isMissingInfo: json['isMissingInfo'] as bool? ?? false,
      missingInfoPrompt: json['missingInfoPrompt'] as String?,
    );
  }
}
