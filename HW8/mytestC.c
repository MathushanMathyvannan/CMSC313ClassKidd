#include "matrixC.h"
#include <stdio.h>

int main() {
    Matrix A = matrix_create(2, 2);
    Matrix B = matrix_create(2, 3);
    Matrix C = matrix_create(2, 3);

    matrix_set(&A, 0, 0, 6); matrix_set(&A, 0, 1, 4);
    matrix_set(&A, 1, 0, 8); matrix_set(&A, 1, 1, 3);

    matrix_set(&B, 0, 0, 1); matrix_set(&B, 0, 1, 2); matrix_set(&B, 0, 2, 3);
    matrix_set(&B, 1, 0, 4); matrix_set(&B, 1, 1, 5); matrix_set(&B, 1, 2, 6);

    matrix_set(&C, 0, 0, 2); matrix_set(&C, 0, 1, 4); matrix_set(&C, 0, 2, 6);
    matrix_set(&C, 1, 0, 1); matrix_set(&C, 1, 1, 3); matrix_set(&C, 1, 2, 5);

    Matrix B_scaled = matrix_scalar_multiply(&B, 3);
    Matrix C_transposed = matrix_transpose(&C);
    Matrix product = matrix_multiply(&B_scaled, &C_transposed);
    Matrix D = matrix_add(&A, &product);

    printf("Result (D = A + 3B * C^T):\n");
    matrix_print(&D);

    return 0;
}