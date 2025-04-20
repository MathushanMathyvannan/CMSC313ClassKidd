#ifndef MATRIX_H
#define MATRIX_H

#define MAX_ROWS 10
#define MAX_COLS 10

typedef struct {
    int data[MAX_ROWS][MAX_COLS];
    int numrows;
    int numcols;
} Matrix;

Matrix matrix_create(int numrows, int numcols);

void matrix_set(Matrix* m, int row, int col, int value);
int matrix_get(const Matrix* m, int row, int col);

void matrix_print(const Matrix* m);

Matrix matrix_add(const Matrix* matrixone, const Matrix* matrixtwo);
Matrix matrix_scalar_multiply(const Matrix* m, int scalar);
Matrix matrix_multiply(const Matrix* matrixone, const Matrix* matrixtwo);
Matrix matrix_transpose(const Matrix* m);

#endif