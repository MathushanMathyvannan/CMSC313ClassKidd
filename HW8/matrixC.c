#include "matrixC.h"
#include <stdio.h>
#include <stdlib.h>

Matrix matrix_create(int numrows, int numcols) {
    Matrix m;
    m.numrows = numrows;
    m.numcols = numcols;
    m.data = (int*)calloc(numrows * numcols, sizeof(int));  // initialize to 0
    return m;
}

void matrix_destroy(Matrix* m) {
    free(m->data);
    m->data = NULL;
    m->numrows = 0;
    m->numcols = 0;
}

void matrix_set(Matrix* m, int row, int col, int value) {
    m->data[row * m->numcols + col] = value;
}

int matrix_get(const Matrix* m, int row, int col) {
    return m->data[row * m->numcols + col];
}

void matrix_print(const Matrix* m) {

    for (int i = 0; i < m->numrows; ++i) {
        for (int j = 0; j < m->numcols; ++j)
            printf("%5d ", matrix_get(m, i, j));
        printf("\n");
    }

}

Matrix matrix_add(const Matrix* a, const Matrix* b) {

    if (a->numrows != b->numrows || a->numcols != b->numcols) {
        printf("Matrix size do not match\n");
        exit(EXIT_FAILURE);
    }

    Matrix result = matrix_create(a->numrows, a->numcols);
    for (int i = 0; i < a->numrows; ++i)
        for (int j = 0; j < a->numcols; ++j)
            matrix_set(&result, i, j, matrix_get(a, i, j) + matrix_get(b, i, j));
    return result;

}

Matrix matrix_scalar_multiply(const Matrix* m, int scalar) {

    Matrix result = matrix_create(m->numrows, m->numcols);
    for (int i = 0; i < m->numrows; ++i)
        for (int j = 0; j < m->numcols; ++j)
            matrix_set(&result, i, j, matrix_get(m, i, j) * scalar);
    return result;

}

Matrix matrix_multiply(const Matrix* a, const Matrix* b) {

    if (a->numcols != b->numrows) {
        printf("Matrix size non-compatible\n");
        exit(EXIT_FAILURE);
    }

    Matrix result = matrix_create(a->numrows, b->numcols);
    for (int i = 0; i < a->numrows; ++i)
        for (int j = 0; j < b->numcols; ++j)
            for (int k = 0; k < a->numcols; ++k) {
                int current = matrix_get(&result, i, j);
                matrix_set(&result, i, j, current + matrix_get(a, i, k) * matrix_get(b, k, j));
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