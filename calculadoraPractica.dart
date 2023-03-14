/*
Si el tipo de operación es SUMA, el resultado es igual al valor 1 más el valor 2.
Si el tipo de operación es RESTA, el resultado es igual al valor 1 menos el valor 2.
Si el resultado de la resta es negativo, se debe mostrar NEGATIVO en la consola.
Si el tipo de operación es MULTIPLICACIÓN, el resultado es igual al valor 1 por el valor 2.
Si el tipo de operación es MÓDULO, el resultado es igual al valor 1 módulo el valor 2.
Si el tipo de operación es FACTORIAL, el resultado es igual al factorial de valor 1.
Si el tipo de operación es SUMATORIA, el resultado es igual a la suma de todos los valores de la lista de valores.
Si el tipo de operación es PRODUCTO, el resultado es igual a la multiplicación de todos los valores de la lista de valores.
 */

void main() {
  var valor1 = 3;
  var valor2 = 3;
  double factorial = 1;
  List<int> listaValores = [1, 2, 3, 4];
  double resultado = 1;
  
  //llamamos a la función Operaciones
  // si editamos "Operaciones.*producto*" y lo cambiamos por *suma,resta...
  //cambiaremos de  tipo de operación
  Operaciones opciones = Operaciones.producto;

  switch (opciones) {
    case Operaciones.suma:
      valor1 += valor2;
      print("El resultado de la SUMA de $valor1 + $valor2 es: $valor1");
      break;
    case Operaciones.resta:
      valor1 -= valor2;
      if (valor1 < 0) {
        print("El resultado de la RESTA es : $valor1 NEGATIVO");
      } else {
        print("El resultado de la RESTA es : $valor1");
      }
      break;
    case Operaciones.multiplicacion:
      valor1 *= valor2;
      print("El resultado de la MULTIPLICACIÓN es: $valor1");
      break;
    case Operaciones.modulo:
      var resultado = valor1 % valor2;
      print("El resultado de la MODULO es: $resultado");
      break;

    case Operaciones.factorial:
      for (var i = valor1; i >= 1; i--) {
        factorial *= i;
      }
      print("El resultado de FACTORIAL de $valor1 es : $factorial");
      break;
    case Operaciones.sumatoria:
      int sumatoria = 0;
      for (int i = 0; i < listaValores.length; i++) {
        sumatoria += i;
      }
      print("El resultado de SUMATORIA de la lista $listaValores es : $sumatoria");
      break;
     case Operaciones.producto:
      for (var i = 0; i < listaValores.length; i++) {
         resultado *= listaValores[i];
      }
      print("El resultado de PRODUCTO de la lista $listaValores es : $resultado");
      break;
    
  }
}

enum Operaciones {
  suma,
  resta,
  multiplicacion,
  modulo,
  factorial,
  sumatoria,
  producto
}
