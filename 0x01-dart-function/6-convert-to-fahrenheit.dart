List<double> convertToF(List<double> temperaturesInC) {
    var tempsInF = temperaturesInC.map(
        (celsius) => double.parse(((celsius * 9 / 5) + 32).toStringAsFixed(2))
    );
    return tempsInF.toList();
}
