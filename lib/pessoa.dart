class Pessoa {
  String nome = "";
  double peso = 0;
  double altura = 0;

  void setNome(String nome) {
    nome = nome;
  }

  String getNome() {
    return nome;
  }

  void setPeso(double peso) {
    peso = peso;
  }

  double getPeso() {
    return peso;
  }

  void setAltura(double altura) {
    altura = altura;
  }

  double getAltura() {
    return altura;
  }

  double resultadoImc(double peso, double altura) {
    double imc = peso / (altura * altura);
    return imc;
  }

  Pessoa(String nome, double peso, double altura) {
    nome = nome;
    peso = peso;
    altura = altura;
  }
}
