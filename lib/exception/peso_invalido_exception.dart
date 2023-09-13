class PesoInvalidoException implements Exception {
  Exception error() => Exception("Peso invalido!"); 

  @override
  String toString() {
    return error().toString();
  }
}
