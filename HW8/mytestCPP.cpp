#include "matrixCPP.h"
#include <iostream>
using namespace std;

int main() {

    Matrix A(2, 2), B(2, 3), C(2, 3);

    A.get(0, 0) = 6; A.get(0, 1) = 4;
    A.get(1, 0) = 8; A.get(1, 1) = 3;

    B.get(0, 0) = 1; B.get(0, 1) = 2; B.get(0, 2) = 3;
    B.get(1, 0) = 4; B.get(1, 1) = 5; B.get(1, 2) = 6;

    C.get(0, 0) = 2; C.get(0, 1) = 4; C.get(0, 2) = 6;
    C.get(1, 0) = 1; C.get(1, 1) = 3; C.get(1, 2) = 5;

    Matrix D = A + (B * 3) * C.transpose();

    cout << "Result (D = A + 3B * C^T):\n";
    D.print();

    return 0;
}