/*
1- load in image
2- process image to just RGB values
3- pick N random pixels as potential centoids
4- iterate through all pixels in the image
	4a) for each pixel, calculate distance(centoids, current pixel)
		where distance = [the distance formula]
	4b) find the min(the N centoids) and assign it that centoid
5- update the centoids* as the new means of the pixels assigned to them
	* unless no pixels are assigned to a centoid
6- repeat steps 4 & 5 until the change of the centoid is within a certain threshold
*/

#include <stdio.h>
#include <stdlib.h>
#include "opencv2/imgproc/imgproc.hpp"
#include <math.h>

using namespace cv;

int K; //number of desired clusters
int loops; //accuracy loop #
int rows;
int cols;

// 1- load in image
// 2- process image to just RGB values
void read_img (char filepath){
	Mat* img = imread(filepath);
	return img;
	// Vec3b intensity = img.at<Vec3b>(y,x);
	// uchar b = intensity.val[0];
	// uchar g = intensity.val[1];
	// uchar r = intensity.val[2];
	
}

//3- pick N random pixels as potential centoids
void pick_centoids (Vec3b* ptrCentoids){	
	for (int i = 0; i < K; i++){
		ptrCentoids[i] = Vec3b(rand()%255,rand()%255,rand()%255);
	}
}

float find_distance(Vec3b pix, Vec3b cent){
	float b = float (pix.val[0] - cent.val[0]);
	float g = float (pix.val[1] - cent.val[1]);
	float r = float (pix.val[2] - cent.val[2]);
	return sqrt(b*b + g*g + r*r);
}


//4- iterate through all pixels in the image
	// 4a) for each pixel, calculate distance(centoids, current pixel)
	// 	where distance = [the distance formula]
	// 4b) find the min(the N centoids) and assign it that centoid
uint find_cluster(Vec3b pix){ //, Vec3b* centoids){
	float min_dist = sqrt(3*255*255);
	uint assignment = 0;
	for (int i = 0; i < K; i++){
		if (find_distance(pix, &centoids[i])< min_dist){
			min_dist = find_distance(pix, &centoids[i]);
			assignment = i;
		}
	return assignment;
	}
}

Mat* assign_cluster(Mat inMatrix, Mat* outMatrix){ //Vec3b* centoids, Mat* cluster_assign){
	for (int i = 0; i < rows; i++){
		for (int j = 0; j < cols; j++){
			&outMatrix[i][j] = find_cluster(inMatrix[i][j]);
		}
	}
	return outMatrix;
}

// 5- update the centoids* as the new means of the pixels assigned to them
// 	* unless no pixels are assigned to a centoid
void calculate(int assignment, Mat picMatrix, Mat* cluster_assign){
	Vec3b* Sigma;
	uint* len;

	for (int i = 0; i < rows; i++){
		for (int j = 0; j < cols; j++){
			if (cluster_assign[i][j] = assignment){
				&Sigma[0] += picMatrix[i][j].val[0];
				&Sigma[1] += picMatrix[i][j].val[1];
				&Sigma[2] += picMatrix[i][j].val[2];
				&len++;
			}
		}
	}
	&centoids[0] = &Sigma[0]/len;
	&centoids[1] = &Sigma[1]/len;
	&centoids[2] = &Sigma[2]/len;
}

// 6- return matrix of assigned colors
void trans_Img(){
	Mat* output = (Mat*) malloc(rows*cols*sizeof(Vec3b));
	assign_cluster(Mat I, Mat* output);
}

// void main(int argc, char** argv) {
// void main() {
// 	Mat I = read_img("lotus.jpg");
// 	rows = I.rows;
// 	cols = I.cols*I.channels;
// 	Vec3b* centoids = (Vec3b*) malloc(K*sizeof(Vec3b));
// 	pick_centoids(centoids);
// 	for (int j = 0; j < loops; j++){
// 		assign_cluster(I, _DEFINE__);
// 		for (int i = 0; i < K; i++){
// 			calculate(centoids[i],I, _DEFINE__);
// 		}
// 	}
// 	trans_Img

// }

// #include <stdio.h>

// void main() {
// 	int x = 4;
// }
