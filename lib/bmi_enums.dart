enum BmiStatus {
  lowWeight(message: "A Baixo do Peso!"),
  normalWeight(message: "Peso Normal!"),
  overWeight(message: "Sobrepeso!"),
  obesity(message: "Obesidade"),
  dontFound(message: "IMC inválido");

  final String message;
  const BmiStatus({required this.message});
}
