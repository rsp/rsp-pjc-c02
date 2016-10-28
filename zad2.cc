#include <iostream>

int main() {
    using std::cin; using std::endl; using std::cout;

    int a, minv, maxv, minc, maxc, i = 0;
    while (cout << "> ", cin >> a, cin && a != 0) {
        if (!i++) {
            maxv = minv = a;
            maxc = minc = 1;
        } else if (a > maxv) {
            maxv = a;
            maxc = 1;
        } else if (a < minv) {
            minv = a;
            minc = 1;
        } else if (a == maxv) {
            maxc++;
        } else if (a == minv) {
            minc++;
        }
    }

    cout << "Min = " << minv << " " << minc << " razy" << endl;
    cout << "Max = " << maxv << " " << maxc << " razy" << endl;
}
