#include "matrixCPP.h"
#include <iostream>
using namespace std;

int main() {

    Matrix A(2, 2), B(2, 3), C(2, 3);

    // Initialize A
    A.at(0, 0) = 6; A.at(0, 1) = 4;
    A.at(1, 0) = 8; A.at(1, 1) = 3;

    // Initialize B
    B.at(0, 0) = 1; B.at(0, 1) = 2; B.at(0, 2) = 3;
    B.at(1, 0) = 4; B.at(1, 1) = 5; B.at(1, 2) = 6;

    // Initialize C
    C.at(0, 0) = 2; C.at(0, 1) = 4; C.at(0, 2) = 6;
    C.at(1, 0) = 1; C.at(1, 1) = 3; C.at(1, 2) = 5;

    // Compute D = A + (3 * B) * C^T
    Matrix D = A + (B * 3) * C.transpose();

    cout << "Result (D = A + 3B * C^T):\n";
    D.print();

    return 0;
}