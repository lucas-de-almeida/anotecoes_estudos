void main() {
  String idade = '38';
  String? nome;

  try {
    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();
    print(idade);

    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    print(e);
    //o S é o stackTrace mostra o caminho percorrido e mostra a linha que originou o erro;
    print(s);
    print('erro ao converter idade');
    // quando usado um tipo especifico de exceção pode ser retirado o catch
  } on TypeError {
    print('erro ao executar programa2');
  } on Exception {
    print('erro idade == 38');
  } catch (error) {
    //print(error);
    print('erro ao executar programa');
  } finally {
    //finally sempre é executado indenpendente se der erro ou nao
    print('finnaly');
  }
}
