# 🚀 Proyecto de Operaciones y Mensajería en Dart 🚀

¡Bienvenido a mi repositorio de Git! Aquí encontrarás dos emocionantes programas en Dart, cada uno diseñado para realizar operaciones matemáticas y manejar mensajes informativos diarios. A continuación, se presenta una descripción de cada uno de estos programas.

## Programa 1: Operaciones Matemáticas 🧮

Este programa permite realizar una variedad de operaciones matemáticas básicas y avanzadas:

- **SUMA**: Calcula la suma de dos valores.
- **RESTA**: Calcula la resta de dos valores y muestra un mensaje especial si el resultado es negativo.
- **MULTIPLICACIÓN**: Calcula el producto de dos valores.
- **MÓDULO**: Calcula el módulo (resto) de la división entre dos valores.
- **FACTORIAL**: Calcula el factorial de un valor.
- **SUMATORIA**: Suma todos los valores de una lista.
- **PRODUCTO**: Multiplica todos los valores de una lista.

### Código:

```dart
void main() {
  var valor1 = 3;
  var valor2 = 3;
  double factorial = 1;
  List<int> listaValores = [1, 2, 3, 4];
  double resultado = 1;
  
  // Edita la opción para cambiar el tipo de operación
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
