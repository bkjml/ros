#include <iostream>
#include <cmath>
#include <ros/ros.h>
#include "arm_lib/NameDetail.h"

using namespace std;

double *rotateX(double x, double y, double z, double angelX)
{
  double *arr = new double[5];
  double xx = x;
  double yx = y * cos(angelX) - z * sin(angelX);
  double zx = y * sin(angelX) + z * cos(angelX);

  /* Some operations on arr[] */
  arr[0] = xx;
  arr[1] = yx;
  arr[2] = zx;

  return arr;
}

double *translateX(double x, double y, double z, double angelX, int distance)
{
  double *arr = new double[5];
  double xx = x * distance;
  double yx = y * cos(angelX) - z * sin(angelX);
  double zx = y * sin(angelX) + z * cos(angelX);

  /* Some operations on arr[] */
  arr[0] = xx;
  arr[1] = yx;
  arr[2] = zx;

  return arr;
}

double *rotateY(double x, double y, double z, double angelY)
{

  double *arr = new double[5];

  double xy = z * sin(angelY) + x * cos(angelY);
  double yy = y;
  double zy = z * cos(angelY) - x * sin(angelY);

  arr[0] = xy;
  arr[1] = yy;
  arr[2] = zy;

  return arr;
}

double *translateY(double x, double y, double z, double angelY, int distance)
{

  double *arr = new double[5];

  double xy = z * sin(angelY) + x * cos(angelY);
  double yy = y * distance;
  double zy = z * cos(angelY) - x * sin(angelY);

  arr[0] = xy;
  arr[1] = yy;
  arr[2] = zy;

  return arr;
}

double *rotateZ(double x, double y, double z, double angelZ)
{
  double *arr = new double[100];

  double xz = x * cos(angelZ) - y * sin(angelZ);
  double yz = x * sin(angelZ) + y * cos(angelZ);
  double zz = z;

  /* Some operations on arr[] */
  arr[0] = xz;
  arr[1] = yz;
  arr[2] = zz;

  return arr;
}

double *translateZ(double x, double y, double z, double angelZ, int distance)
{
  double *arr = new double[100];

  double xz = x * cos(angelZ) - y * sin(angelZ);
  double yz = x * sin(angelZ) + y * cos(angelZ);
  double zz = z * distance;

  /* Some operations on arr[] */
  arr[0] = xz;
  arr[1] = yz;
  arr[2] = zz;

  return arr;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "arm_lib_node");
  ros::NodeHandle n;
  ros::Publisher vectorPublisher = n.advertise<arm_lib::NameDetail>("/publishVector", 1000);
  ros::Rate loop_rate(10);

  while (ros::ok())
  {
    arm_lib::NameDetail vectorDetail;
    double *values = new double[5];
    for (int i = 0; i < 7; i++)
    {
      cout << "Enter value: " << endl;
      cin >> values[i];
    }

    vectorDetail.x = values[0];
    vectorDetail.y = values[1];
    vectorDetail.z = values[2];
    vectorDetail.alpha = values[3];
    vectorDetail.beta = values[4];
    vectorDetail.gamma = values[5];
    vectorDetail.distance = values[6];

    double *tPtr = translateX(vectorDetail.x, vectorDetail.y, vectorDetail.z, vectorDetail.alpha, vectorDetail.distance);
    double *tPtr1 = translateY(vectorDetail.x, vectorDetail.y, vectorDetail.z, vectorDetail.beta, vectorDetail.distance);
    double *tPtr2 = translateZ(vectorDetail.x, vectorDetail.y, vectorDetail.z, vectorDetail.gamma, vectorDetail.distance);

    vectorDetail.newXX = tPtr[0];
    vectorDetail.newXY = tPtr[1];
    vectorDetail.newXZ = tPtr[2];

    vectorDetail.newYX = tPtr1[0];
    vectorDetail.newYY = tPtr1[1];
    vectorDetail.newYZ = tPtr1[2];

    vectorDetail.newZX = tPtr2[0];
    vectorDetail.newZY = tPtr2[1];
    vectorDetail.newZZ = tPtr2[2];

    ROS_INFO("\nx', y', z'[ROTATED in X THEN TRANSLATED] = %f, %f, %f", vectorDetail.newXX, vectorDetail.newXY, vectorDetail.newXZ);
    ROS_INFO("\nx', y', z'[ROTATED in Y THEN TRANSLATED]: %f, %f, %f", vectorDetail.newYX, vectorDetail.newYY, vectorDetail.newYZ);
    ROS_INFO("\nx', y', z'[ROTATED in Z THEN TRANSLATED]: %f, %f, %f", vectorDetail.newZX, vectorDetail.newZY, vectorDetail.newZZ);
    vectorPublisher.publish(vectorDetail);
    ros::spinOnce();
    loop_rate.sleep();
  }

  // ros::Rate loop_rate(50);
}

// double *ptr = rotateX(vectorDetail.x, vectorDetail.y, vectorDetail.z, vectorDetail.alpha);
//     double *ptr1 = rotateY(vectorDetail.x, vectorDetail.y, vectorDetail.z, vectorDetail.beta);
//     double *ptr2 = rotateZ(vectorDetail.x, vectorDetail.y, vectorDetail.z, vectorDetail.gamma);

// ROS_INFO("\nRotation of %f, %f, %f [x-axis] => %f, %f, %f", vectorDetail.x, vectorDetail.y, vectorDetail.z, ptr[0], ptr[1], ptr[2]);
// ROS_INFO("\nRotation of %f, %f, %f [y-axis] => %f, %f, %f", vectorDetail.x, vectorDetail.y, vectorDetail.z, ptr1[0], ptr1[1], ptr1[2]);
// ROS_INFO("\nRotation of %f, %f, %f [z-axis] => %f, %f, %f", vectorDetail.x, vectorDetail.y, vectorDetail.z, ptr2[0], ptr2[1], ptr2[2]);