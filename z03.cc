#include <iostream>
#include <iomanip>
#include <cmath>

using std::cin; using std::cout; using std::endl;
using std::setprecision; using std::fixed;

void rad2dms(double rad, int& d, int& m, int& s) {
    using std::floor; using std::round;
    rad *= 180 * M_1_PI;
    d = floor(rad);
    rad = (rad - d) * 60;
    m = floor(rad);
    rad = (rad - m) * 60;
    s = round(rad);
}
double dms2rad(int d, int m, int s) {
    return M_PI * (d + m/60.0 + s/3600.0) / 180;
}

void print(double r) {
    int d{}, m{}, s{};
    rad2dms(r, d, m, s);
    cout << r << " radians = approx. " << d << "d"
         << m << "m" << s << "s" << " which is "
         << dms2rad(d, m, s) << " rad" << endl;
}

int main() {
    cout << std::setprecision(7) << fixed;
    print(0.7069528);
    print(0.7069530);
}
