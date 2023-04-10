main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    
    
    if (i == 5) {
      continue;  // ignora el ciclo si se cumple la condicion y continua
    }

    print(i);

    if (i == 7){
      break;  // sale del ciclo si se cumple la condicion
    }


  }
}
