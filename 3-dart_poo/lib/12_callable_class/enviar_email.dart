class EnviarEmail {
  bool call(String email) {
    print('chamando dentro do call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('chamando dentro do enviar');

    return true;
  }
}
