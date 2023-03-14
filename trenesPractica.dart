/*
  Buenos días, trabajadores de TRENES CIUDAD PALETA!!!

El día de hoy la temperatura es de 27 grados
centígrados u 80,6 grados Fahrenheit.
El tren se detendrá en las siguientes ciudades: [Plateada, Celeste, Carmín, Azulona]

Los valores del programa serán cambiados todas las mañanas mediante la manipulación del código, pero se requiere lo siguiente:

El nombre de la estación de trenes puede cambiar, pero siempre debe mostrarse en mayúscula.
La temperatura en grados centígrados siempre será entera, pero Fahrenheit puede ser entera o decimal.
La lista de ciudades puede tener 1 o más nombres (cambiar diariamente).
Dentro del código deben estar todas las instrucciones, a modo de comentarios, necesarias para que otro programador sepa cuáles valores cambiar todos los días.

*/
void main() {
  //Ciudad actual y mayúscula
	String ciudad = "PALETA";
  ciudad.toUpperCase();
  
  //Temperatura en entero y decimal
  int tempGrados = 27;
  double tempFahrenheit = 80.6;
  
  //Lista de ciudades
  List <String> listaCiudades = ["Plateada","Celeste","Carmín","Azulona"];
  
  // Textos básicos
  String textSaludos = "Buenos días, trabajadores de TRENES CIUDAD $ciudad\!!!";
  String temperaturaGrados = "El día de hoy la temperatura es de $tempGrados grados"; 
	String temperaturaFahrenheit = "centígrados u $tempFahrenheit grados Fahrenheit.";
  String textCiudades = "El tren se detendrá en las siguientes ciudades: $listaCiudades";
  
  //Impresión por pantalla
  print(textSaludos);
  print(temperaturaGrados);
  print(temperaturaFahrenheit);
  print(textCiudades);

}
