#ifndef MATRIX_H
#define MATRIX_H

#define MAX_ROWS 10
#define MAX_COLS 10

class Matrix {
private:
    int data[MAX_ROWS][MAX_COLS];
    int numrows, numcols;

public:

    Matrix(int numrows, int numcols);

    int& get(int row, int col);
    int get(int row, int col) const;

    int getNumRows() const;
    int getNumCols() const;

    void print() const;

    Matrix transpose() const;
    Matrix operator*(int scalar) const;
    Matrix operator+(const Matrix& other) const;
    Matrix operator*(const Matrix& other) const;
};

#endif