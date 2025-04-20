#include "matrixC.h"
#include <stdio.h>
#include <stdlib.h>

Matrix matrix_create(int numrows, int numcols) {
    Matrix m;
    m.numrows = numrows;
    m.numcols = numcols;
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < numcols; ++j)
            m.data[i][j] = 0;
    return m;
}

void matrix_set(Matrix* m, int row, int col, int value) {
    m->data[row][col] = value;
}

int matrix_get(const Matrix* m, int row, int col) {
    return m->data[row][col];
}

void matrix_print(const Matrix* m) {
    for (int i = 0; i < m->numrows; ++i) {
        for (int j = 0; j < m->numcols; ++j)
            printf("%d ", matrix_get(m, i, j));
        printf("\n");
    }
}

Matrix matrix_add(const Matrix* matrixone, const Matrix* matrixtwo) {
    if (matrixone->numrows != matrixtwo->numrows || matrixone->numcols != matrixtwo->numcols) {
        printf("Matrix size do not match\n");
        exit(EXIT_FAILURE);
    }

    Matrix result = matrix_create(matrixone->numrows, matrixone->numcols);
    for (int i = 0; i < matrixone->numrows; ++i)
        for (int j = 0; j < matrixone->numcols; ++j)
            matrix_set(&result, i, j, matrix_get(matrixone, i, j) + matrix_get(matrixtwo, i, j));
    return result;
}

Matrix matrix_scalar_multiply(const Matrix* m, int scalar) {
    Matrix result = matrix_create(m->numrows, m->numcols);
    for (int i = 0; i < m->numrows; ++i)
        for (int j = 0; j < m->numcols; ++j)
            matrix_set(&result, i, j, matrix_get(m, i, j) * scalar);
    return result;
}

Matrix matrix_multiply(const Matrix* matrixone, const Matrix* matrixtwo) {
    if (matrixone->numcols != matrixtwo->numrows) {
        printf("Matrix size non-compatible\n");
        exit(EXIT_FAILURE);
    }

    Matrix result = matrix_create(matrixone->numrows, matrixtwo->numcols);
    for (int i = 0; i < matrixone->numrows; ++i)
        for (int j = 0; j < matrixtwo->numcols; ++j)
            for (int k = 0; k < matrixone->numcols; ++k) {
                int current = matrix_get(&result, i, j);
                matrix_set(&result, i, j, current + matrix_get(matrixone, i, k) * matrix_get(matrixtwo, k, j));
            }
    return result;
}

Matrix matrix_transpose(const Matrix* m) {
    Matrix result = matrix_create(m->numcols, m->numrows);
    for (int i = 0; i < m->numrows; ++i)
        for (int j = 0; j < m->numcols; ++j)
            matrix_set(&result, j, i, matrix_get(m, i, j));
    return result;
}