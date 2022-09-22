import 'dart:math';

class StringsMethods {
  static List<String> spiningWords(String text) {
    List<String> auxText = text.split(' ');
    String resultText = '';
    auxText.forEach(
      (element) {
        if (element.length > 5) {}
      },
    );
    return auxText;
  }

  static String removeStringSpaces(String? text) {
    return text!.replaceAll(' ', '').trim();
  }

  static bool isTheStringUppercase(String? text) {
    return text!.toUpperCase() == text;
  }

  static String countSheep(int numb) {
    if (numb <= 0) return '';
    String text = '';
    for (var i = 1; i <= numb; i++) {
      text += '$i sheep...';
    }
    return text;
  }

  static String countSheepListGenerate(int numb) {
    return List.generate(numb, (i) => '${++i} sheep...').join();
  }

  static bool isPalindrome(String word) {
    for (int i = 0; i < word.length ~/ 2; i++) {
      if (word[i].toLowerCase() != word[word.length - i - 1].toLowerCase()) return false;
    }
    return true;
  }

  static bool isPalindromeReverseJoin(String word) {
    return word.toUpperCase().split("").reversed.join() == word.toUpperCase();
  }

  static String rnaToDna(String dna) {
    return dna.replaceAll('T', 'U');
  }

  static String booleanToString(bool b) {
    return b.toString();
  }

  static String decToBin(int dec) {
    return dec.toRadixString(2);
  }

  static String repeatString(int n, String s) {
    String repeatedString = '';
    for (var i = 0; i < n; i++) {
      repeatedString += s;
    }
    return repeatedString;
  }

  static String repeatStringShort(int n, String s) {
    return s * n;
  }

  static String repeatStringListGenerate(int n, String s) => List.generate(
        n,
        (i) => s,
      ).join();

  static int stairsIn20(List<List<int>> arr) {
    var aux = arr.map((e) => e.reduce((value, element) => value + element)).reduce((value, element) => value + element) * 20;

    return aux;
  }

  static String wallpaper(double l, double w, double h) {
    if (l <= 0 || w <= 0 || h <= 0) return 'zero';
    List<String> numbers = [
      "zero",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine",
      "ten",
      "eleven",
      "twelve",
      "thirteen",
      "fourteen",
      "fifteen",
      "sixteen",
      "seventeen",
      "eighteen",
      "nineteen",
      "twenty"
    ];
    double rolls = 0.52 * 10;
    int result = ((((l * h * 2) + (w * h * 2)) / (rolls)) * 1.15).ceil();

    return numbers.elementAt(result).toString();
  }

  static String reversedStrings(String str) {
    return str.split('').reversed.join();
  }

  static String histogram(List<int> results) {
    var aux = '';

    for (var i = results.length - 1; i >= 0; i--) {
      if (results[i] != 0) {
        aux += "${i + 1}|${'#' * results[i]} ${results[i]}\n";
      } else {
        aux += "${i + 1}|${'#' * results[i]}\n";
      }
    }

    return aux;
  }

  static evenOrOdd(int number) {
    return number % 2 == 0 ? 'Even' : 'Odd';
  }

  static String chromosome_check(String sperm) {
    return sperm == 'XY' ? "Congratulations! You're going to have a son." : "Congratulations! You're going to have a daughter.";
  }

  static void listaPacientes() {
    final pacientes = [
      'Rodrigo Rahman|35|desenvolvedor|SP',
      'Manoel Silva|12|estudante|MG',
      'joaquim Rahman|18|estudante|SP',
      'Fernando Verne|35|estudante|MG',
      'Gustavo Silva|40|desenvolvedor|MG',
      'Sandra Silva|40|desenvolvedor|MG',
      'Regina Verne|35|dentista|MG',
      'João Rahman|35|jornalista|SP',
    ];
    List listAux = [];
    List qtdProf = List.filled(5, '0');
    var count1 = 0;
    var count2 = 0;
    var count3 = 0;
    var count4 = 0;
    var count5 = 0;

    listAux = pacientes.map((e) => e.split('|')).toList();
    for (var i = 0; i < listAux.length; i++) {
      if (int.parse(listAux[i][1]) > 20) {
        print(listAux[i][0]);
      }
      if (listAux[i][2] == 'desenvolvedor') {
        count1++;
        qtdProf[0] = 'desenvolverdor $count1';
      }
      if (listAux[i][2] == 'estudante') {
        count2++;
        qtdProf[1] = 'estudante $count2';
      }
      if (listAux[i][2] == 'dentista') {
        count3++;
        qtdProf[2] = 'dentista $count3';
      }
      if (listAux[i][2] == 'jornalista') {
        count4++;
        qtdProf[3] = 'jornalista $count4';
      }
      if (listAux[i][3] == 'SP') {
        count5++;
        qtdProf[4] = 'SP $count5';
      }
    }
    print(qtdProf);
  }

  static void limparLista() {
    final pessoas = [
      'Rodrigo Rahman|35|Masculino',
      'Jose|56|Masculino',
      'Joaquim|84|Masculino',
      'Rodrigo Rahman|35|Masculino',
      'Maria|88|Feminino',
      'Helena|24|Feminino',
      'Leonardo|5|Masculino',
      'Laura Maria|29|Feminino',
      'Joaquim|72|Masculino',
      'Helena|24|Feminino',
      'Guilherme|15|Masculino',
      'Manuela|85|Feminino',
      'Leonardo|5|Masculino',
      'Helena|24|Feminino',
      'Laura|29|Feminino',
    ];
    var count1 = 0;
    var count2 = 0;
    var count3 = 0;
    var count4 = 0;
    var count5 = 0;
    var mascFem = List.filled(2, '0');
    var listaLimpa = pessoas.toSet().toList();
    var listAux = listaLimpa.map((e) => e.split('|')).toList();
    for (var i = 0; i < listAux.length; i++) {
      if (int.parse(listAux[i][1]) > 18) {
        print(listAux[i][0]);
      }
      if (listAux[i][2] == 'Masculino'.toLowerCase()) {
        count1++;
        mascFem[0] = 'Masculino $count1';
      }
      if (listAux[i][2] == 'Feminino'.toLowerCase()) {
        count2++;
        mascFem[1] = 'Feminino $count2';
      }
    }

    print(listAux);

    //! Baseado na lista acima.
    //! 1 - Remova os pacientes duplicados e apresente a nova lista
    //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
    //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
    //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  }
}
