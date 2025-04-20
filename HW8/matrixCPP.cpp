#include "matrixCPP.h"
#include <iostream>
#include <iomanip>
#include <stdexcept>

using namespace std;

Matrix::Matrix(int numrows, int numcols) : numrows(numrows), numcols(numcols), data(numrows * numcols, 0) {}

int& Matrix::at(int row, int col) {
    return data[row * numcols + col];
}

int Matrix::at(int row, int col) const {
    return data[row * numcols + col];
}

int Matrix::numnumrows() const {
    return numrows;
}

int Matrix::numnumcols() const {
    return numcols;
}

void Matrix::print() const {

    for (int i = 0; i < numrows; ++i) {
        for (int j = 0; j < numcols; ++j)
            cout << at(i, j) << " ";
        cout << endl;
    }
}

Matrix Matrix::transpose() const {

    Matrix result(numcols, numrows);
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < numcols; ++j)
            result.at(j, i) = at(i, j);
    return result;
}

Matrix Matrix::operator*(int scalar) const {

    Matrix result(numrows, numcols);
    for (int i = 0; i < numrows * numcols; ++i)
        result.data[i] = data[i] * scalar;
    return result;
}


Matrix Matrix::operator+(const Matrix& mtxtwo) const {

    if (numrows != mtxtwo.numrows || numcols != mtxtwo.numcols)
        throw invalid_argument("Matrix size do not match");

    Matrix result(numrows, numcols);
    for (int i = 0; i < numrows * numcols; ++i)
        result.data[i] = data[i] + mtxtwo.data[i];
    return result;

}

Matrix Matrix::operator*(const Matrix& mtxtwo) const {

    if (numcols != mtxtwo.numrows)
        throw invalid_argument("Matrix size non-compatible");
    
    Matrix result(numrows, mtxtwo.numcols);
    for (int i = 0; i < numrows; ++i)
        for (int j = 0; j < mtxtwo.numcols; ++j)
            for (int k = 0; k < numcols; ++k)
                result.at(i, j) += at(i, k) * mtxtwo.at(k, j);
    return result;
}