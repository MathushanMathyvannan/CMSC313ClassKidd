#ifndef MATRIX_H
#define MATRIX_H

#include <vector>

class Matrix {
private:
    std::vector<int> data;
    int numrows, numcols;

public:
    Matrix(int numrows, int numcols);

    int& at(int row, int col);
    int at(int row, int col) const;

    int numnumrows() const;
    int numnumcols() const;

    void print() const;
    
    Matrix transpose() const;

    Matrix operator*(int scalar) const;
    Matrix operator+(const Matrix& other) const;
    Matrix operator*(const Matrix& other) const;
};

#endif