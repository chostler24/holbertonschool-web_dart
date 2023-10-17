int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    int sum = add(a, b);
    int difference = sub(a, b);
    return "$a + $b = $sum\n$a - $b = $difference";
}
