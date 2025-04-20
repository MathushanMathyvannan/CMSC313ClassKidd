#ifndef MATRIX_H
#define MATRIX_H

typedef struct {
    int* data;
    int numrows;
    int numcols;
} Matrix;

Matrix matrix_create(int numrows, int numcols);
void matrix_destroy(Matrix* m);  // To free memory

void matrix_set(Matrix* m, int row, int col, int value);
int matrix_get(const Matrix* m, int row, int col);

void matrix_print(const Matrix* m);

Matrix matrix_add(const Matrix* a, const Matrix* b);
Matrix matrix_scalar_multiply(const Matrix* m, int scalar);
Matrix matrix_multiply(const Matrix* a, const Matrix* b);
Matrix matrix_transpose(const Matrix* m);

#endif