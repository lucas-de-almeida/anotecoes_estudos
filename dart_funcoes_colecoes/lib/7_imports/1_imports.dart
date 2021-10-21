import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;

void main() {
  var numero = soma.somaDouble(10, 10);
  var numero2 = nova_soma.somaInteiros(10, 10);
  print(numero);
}
