#include <iostream>
#include <cmath>

double* aver(double* arr, size_t size, double& average) {
    using std::abs;

    double sum = 0;
    for (size_t i = 0; i < size; i++)
        sum += arr[i];
    average = sum / size;

    auto dist = [&average](double *x) {
        return abs(*x - average);
    };

    double *closest = arr;
    for (size_t i = 1; i < size; i++)
        if (dist(arr + i) < dist(closest))
            closest = arr + i;

    return closest;
}

int main() {
    using std::cin; using std::endl; using std::cout;

    double arr[] = {1,2,3,4,5,7};
    size_t size = sizeof(arr) / sizeof(arr[0]);
    double average = 0;
    double *p = aver(arr, size, average);
    cout << *p << " " << average << endl;
}
