#include <iostream>

using namespace std;

class safe_c_array_t
{
private:
    int size;  
    int *arr;

public:
    safe_c_array_t(int size)  // constructor
    {  
        this->size = size;
        this->arr = new int [size];
    };

    ~safe_c_array_t()   // destructor
    {     
        delete [] arr; // memory leak? http://www.cplusplus.com/forum/beginner/30903/

        cout << "Destroyed " << this << endl;
    };

    const int operator[](int pos) const // finds element at the specified position
    {  
        if (pos >= size) {
            std::cout << "The position out of range." << std::endl;
            return -1;
        }

        return arr[pos];
    }

    int operator[](int pos)  // finds element at the specified position
    {  
        if (pos >= size) {
            cout << "The position out of range." << endl;
            return -1;
        }

        return arr[pos];
    }

    safe_c_array_t operator=(const safe_c_array_t &other) 
    {  
        this->arr = new int [other.size]; 
        for (int i = 0; i < other.size; i++) {
            arr[i] = other.arr[i];
        }
    }

};

int main() 
{
    safe_c_array_t array_1 = safe_c_array_t(5);
    safe_c_array_t array_2 = array_1; 

    array_1[2];

    for (int i = 0; i < 5; i++) {
        cout << array_1[i] << " ";
    } 
    cout << endl;

    array_1.~safe_c_array_t();

    // makes sure that all values of array_2 equal array_1 
    for (int i = 0; i < 5; i++) {
        cout << array_2[i] << " ";
    }
    cout << endl;
}