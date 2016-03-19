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
#include <iostream>
#include <opencv2/core/core.hpp>
#include <opencv/cv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <math.h>

using namespace cv;
using namespace std;

int K = 5; //number of desired clusters
int loops; //accuracy loop #
int rows;
int cols;
vector<Mat> rgb_vals(3);


// 1- load in image
// 2- process image to just RGB values
void read_img (char* filename){
	Mat img = imread(filename, 1);

	if(! img.data ){                              // Check for invalid input
       printf("Could not open or find the image") ;
       exit(0);
    }

    rows = img.rows;
    cols = img.cols;
    // rgb_vals.create(rows,cols, CV_8UC3);

    split(img, rgb_vals);
	
}

//3- pick N random pixels as potential centoids
void pick_centoids (Vec3b* ptrCentoids){	
	for (int i = 0; i < K; i++){
		ptrCentoids[i] = Vec3b(rand()%255,rand()%255,rand()%255);
		// cout << " " << ptrCentoids[i] << " " << endl ;
	}

	// cout << " " << *ptrCentoids << " " << endl ;
}

float find_distance(Vec3b pix, Vec3b cent){
	float b = float(pix.val[0]) - float(cent.val[0]);
	float g = float(pix.val[1]) - float(cent.val[1]);
	float r = float(pix.val[2]) - float(cent.val[2]);
	return sqrt(b*b + g*g + r*r);
}

//4- iterate through all pixels in the image
	// 4a) for each pixel, calculate distance(centoids, current pixel)
	// 	where distance = [the distance formula]
	// 4b) find the min(the N centoids) and assign it that centoid
// uint find_cluster(Vec3b pix, Vec3b* centoids){
uint find_cluster(Vec3b* centroids){
	float min_dist = sqrt(3*255*255);
	uint assignment = 0;
	// cout << " " << pix[0] << " " << endl ;
	for (int i = 0; i < K; i++){
		// cout << " " << *centroids[0]<< " " << endl ;
		if (find_distance(pix, centroids[i])< min_dist){
			min_dist = find_distance(pix, centroids[i]);
			assignment = i;
		}
	return assignment;
	}
	
}

// Mat* assign_cluster(Mat inMatrix, Mat* outMatrix){ //Vec3b* centoids, Mat* cluster_assign){
// 	for (int i = 0; i < rows; i++){
// 		for (int j = 0; j < cols; j++){
// 			&outMatrix[i][j] = find_cluster(inMatrix[i][j]);
// 		}
// 	}
// 	return outMatrix;
// }

// // 5- update the centoids* as the new means of the pixels assigned to them
// // 	* unless no pixels are assigned to a centoid
// void calculate(int assignment, Mat picMatrix, Mat* cluster_assign){
// 	Vec3b* Sigma;
// 	uint* len;

// 	for (int i = 0; i < rows; i++){
// 		for (int j = 0; j < cols; j++){
// 			if (cluster_assign[i][j] = assignment){
// 				&Sigma[0] += picMatrix[i][j].val[0];
// 				&Sigma[1] += picMatrix[i][j].val[1];
// 				&Sigma[2] += picMatrix[i][j].val[2];
// 				&len++;
// 			}
// 		}
// 	}
// 	&centoids[0] = &Sigma[0]/len;
// 	&centoids[1] = &Sigma[1]/len;
// 	&centoids[2] = &Sigma[2]/len;
// }

// // 6- return matrix of assigned colors
// void trans_Img(){
// 	Mat* output = (Mat*) malloc(rows*cols*sizeof(Vec3b));
// 	assign_cluster(Mat I, Mat* output);
// }

int main( int argc, char** argv ) {
	read_img(argv[1]);

	Vec3b* initial_cent = (Vec3b*) malloc(K*sizeof(Vec3b));
	pick_centoids(initial_cent);

	// find_cluster(initial_cent);

	// for (int i = 0; i < K; i++){
	// 	cout << " " << (*initial_cent).val[i] << " " << endl ;
	// }
	for(int i = 0; i < rows; i++){
	    for(int j = 0; j < cols; j++){
	    	Vec3b* curr_pix = (Vec3b*) malloc(3*sizeof(int));
	    	curr_pix[0] = rgb_vals[0].at<cv::Vec3b>(i,j)[0];
	    	curr_pix[1] = rgb_vals[1].at<cv::Vec3b>(i,j)[1];
	    	curr_pix[2] = rgb_vals[2].at<cv::Vec3b>(i,j)[2];

	    	find_cluster(curr_pix, initial_cent);
	    	// int r = rgb_vals[2].at<cv::Vec3b>(i,j)[2];
	    	// int g = rgb_vals[1].at<cv::Vec3b>(i,j)[1];
	    	// int b = rgb_vals[0].at<cv::Vec3b>(i,j)[0];
	    }
	}




	// for(int i = 0; i < rows; i++)
	// {
	//     for(int j = 0; j < cols; j++)
	//     {
	//     	// int r = rgb_vals.at<cv::Vec3b>(i,j);
	//     	cout << " " << rgb_vals.at<cv::Vec3b>(i,j) << " "<< endl ;
	//         // store_rgb.at<cv::Vec3b>(i,j)[0] = img.at<cv::Vec3b>(i,j)[0];
	//         // cout << r << " " << g << " " << b << endl ;
	//     }
	// }

    // namedWindow( "Display window", WINDOW_AUTOSIZE );// Create a window for display.
    // imshow( "Display window", *img_loc );                   // Show our image inside it.

    // waitKey(0);                                          // Wait for a keystroke in the window
    return 0;
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
