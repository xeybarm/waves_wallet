enum TokenType { check, brackets }

class TokenModel {
  final String tokenImage;
  final TokenType tokenType;
  final String tokenTitle;
  final String tokenSubtext;
  final double tokenAmount;

  const TokenModel({
    required this.tokenImage,
    required this.tokenTitle,
    required this.tokenSubtext,
    required this.tokenType,
    required this.tokenAmount,
  });
}
