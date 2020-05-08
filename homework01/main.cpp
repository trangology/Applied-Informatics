#include <iostream>
#include <fstream>
#include <math.h>  
#include <vector>
#include <algorithm>

using namespace std;

// calculate f(x)
// f(x) could be changed flexibility
float exec(float x) {
	return x * x;
};


int main() {
	int m, n;
	float x1, x2;

	cin >> m >> n >> x1 >> x2;

	float width = (x2 - x1) / m;
	float cur_x = x1;

	vector<float> values_y;

	float min_y = 100000;
	float max_y = -100000;

	for (int i = 0; i < m; i++) {
		float cur_y = exec(cur_x);
		values_y.push_back(cur_y);

		// find the maxima and minima values in the given range
		min_y = min(min_y, cur_y);
		max_y = max(max_y, cur_y);

		cur_x += width;
	};

	float height = (max_y - min_y) / n;

	int horizontal_axis = n;

	// find position of horizontal axis
	if (min_y < 0 && max_y > 0) {
		horizontal_axis = int(max_y / height);
	};

	if (max_y <= 0) {
		horizontal_axis = -1;
	};

	// pos_y is positions of all y coordinates according x sorted in decreasing order
	vector<float> pos_y = { max_y };

	for (int i = 1; i <= n; i++) {
		pos_y.push_back(pos_y[i - 1] - height);
	};

	char coordinates[50][120] = {};

	// If value y fits in the size of the cell, insert "#" to array "coordinates"
	// It also fills all empty cells which are between current point 
	// and horizontal axis with same x-coordinate
	for (int row = 0; row < n; row++) {
		for (int col = 0; col < m; col++) {

			if (row == n - 1 && values_y[col] <= pos_y[row]) {
				coordinates[row][col] = '#';
			}

			if (values_y[col] <= pos_y[row] && values_y[col] >= pos_y[row + 1]) {
				coordinates[row][col] = '#';
			};

			if (coordinates[row][col] == '#' && horizontal_axis != -1) {
				if (row < horizontal_axis) {
					for (int helper = row; helper <= horizontal_axis; helper++) {
						coordinates[helper][col] = '#';
					}
				}
				else
				{
					for (int helper = row - 1; helper > horizontal_axis; helper--) {
						coordinates[helper][col] = '#';
					}
				}
			}

			if (coordinates[row][col] == '#' && horizontal_axis == -1) {
				for (int helper = row - 1; helper > horizontal_axis; helper--) {
					coordinates[helper][col] = '#';
				}
			}
		};
	};

	// plot graph into text file
	ofstream my_file("graph.txt");
	if (my_file.is_open())
	{
		int first_row = 0;

		if (horizontal_axis == -1) {
			for (int i = 0; i < m; i++) {
				my_file << '-';
			}
			my_file << endl;

			first_row = abs(int(max_y / height));
			for (int i = 0; i < first_row; i++) {
				for (int j = 0; j < m; j++) {
					my_file  << '#';
				};
				my_file << endl;
			};
		};

		for (int row = 0; row < n - first_row; row++) {
			for (int col = 0; col < m ; col++) {
				my_file << coordinates[row][col];
			};
			if (row == horizontal_axis) {
				my_file << endl;
				for (int helper = 0; helper < m; helper++) {
					my_file << '-';
				};
			}
			my_file << endl;
		};

		if (horizontal_axis == n) {
			for (int i = 0; i < m; i++) {
				my_file << '-';
			}
		}
		my_file.close();
	}

	else cout << "Unable to open file";

	return 0;
}
