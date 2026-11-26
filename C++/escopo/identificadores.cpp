//teste apenas
#include <iostream>

// Declaracao: amarra o identificador a uma funcao que sera definida depois
int somar(int a, int b);

int main() {
    // C++ e case-sensitive: cria duas entidades distintas na memoria
    int Total_Soma = 10;
    int total_soma = 20;

    // Definicao no meio do bloco com inferencia estatica de tipo (auto)
    const auto valor_inicial = 5;

    int resultado = somar(Total_Soma, total_soma) + valor_inicial;
    std::cout << "Resultado em C++: " << resultado << '\n';
    return 0;
}

// Definicao: cria a entidade associada ao identificador 'somar'
int somar(int a, int b) {
    return a + b;
}