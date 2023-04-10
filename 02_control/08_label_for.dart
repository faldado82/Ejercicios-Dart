
////?? El label es un recurso no muy utilizado, pero vale la pena conocerlo
////?? por si nos encontramos con una situacion donde amerite su utilizacion

void main(List<String> args) {
  outerLoop: // es una etiqueta para nombrar al for externo, puede ser cualquier nombre
  for (int i = 0; i < 5; i++) {
    print('Valor de i: -----------> $i');

    // innerLoop:
    for (int j = 0; j < 5; j++) {
      print('Valor de j: $j');
      if (j == 2) {
        break outerLoop; // cuando llega aca, hace el break del outerLoop;
      }
    }
  }
}
