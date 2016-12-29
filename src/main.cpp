#include <string>
#include <iostream>

#include <gsl/gsl>

int main(int argc, char **argv) {
    std::cout << "Hello world!\n";
    int arr[10];
    gsl::span<int> safe(arr);

    std::cout << "Array size: " << safe.size() << "\n";


    return 0;
}
