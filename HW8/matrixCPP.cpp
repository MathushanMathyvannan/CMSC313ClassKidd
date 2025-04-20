#include "matrixCPP.h"
#include <iostream>
#include <stdexcept>

using namespace std;

Matrix::Matrix(int numrows, int numcols) {
    this->numrows = numrows;
    this->numcols = numcols;
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < numcols; ++j)
            data[i][j] = 0;
}

int& Matrix::get(int row, int col) {
    return data[row][col];
}

int Matrix::get(int row, int col) const {
    return data[row][col];
}

int Matrix::getNumRows() const {
    return numrows;
}

int Matrix::getNumCols() const {
    return numcols;
}

void Matrix::print() const {
    for (int i = 0; i < numrows; ++i) {
        for (int j = 0; j < numcols; ++j)
            cout << data[i][j] << " ";
        cout << endl;
    }
}

Matrix Matrix::transpose() const {
    Matrix result(numcols, numrows);
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < numcols; ++j)
            result.data[j][i] = data[i][j];
    return result;
}

Matrix Matrix::operator*(int scalar) const {
    Matrix result(numrows, numcols);
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < numcols; ++j)
            result.data[i][j] = data[i][j] * scalar;
    return result;
}

Matrix Matrix::operator+(const Matrix& mtxtwo) const {
    if (numrows != mtxtwo.numrows || numcols != mtxtwo.numcols)
        throw invalid_argument("Matrix size do not match");

    Matrix result(numrows, numcols);
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < numcols; ++j)
            result.data[i][j] = data[i][j] + mtxtwo.data[i][j];
    return result;
}

Matrix Matrix::operator*(const Matrix& mtxtwo) const {
    if (numcols != mtxtwo.numrows)
        throw invalid_argument("Matrix size non-compatible");

    Matrix result(numrows, mtxtwo.numcols);
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < mtxtwo.numcols; ++j)
            for (int k = 0; k < numcols; ++k)
                result.data[i][j] += data[i][k] * mtxtwo.data[k][j];
    return result;
}