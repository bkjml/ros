// Generated by gencpp from file arm_gazebo/ik.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_IK_H
#define ARM_GAZEBO_MESSAGE_IK_H

#include <ros/service_traits.h>


#include <arm_gazebo/ikRequest.h>
#include <arm_gazebo/ikResponse.h>


namespace arm_gazebo
{

struct ik
{

typedef ikRequest Request;
typedef ikResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ik
} // namespace arm_gazebo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::arm_gazebo::ik > {
  static const char* value()
  {
    return "84122223e73e4078eaa2c97e97d79aa5";
  }

  static const char* value(const ::arm_gazebo::ik&) { return value(); }
};

template<>
struct DataType< ::arm_gazebo::ik > {
  static const char* value()
  {
    return "arm_gazebo/ik";
  }

  static const char* value(const ::arm_gazebo::ik&) { return value(); }
};


// service_traits::MD5Sum< ::arm_gazebo::ikRequest> should match
// service_traits::MD5Sum< ::arm_gazebo::ik >
template<>
struct MD5Sum< ::arm_gazebo::ikRequest>
{
  static const char* value()
  {
    return MD5Sum< ::arm_gazebo::ik >::value();
  }
  static const char* value(const ::arm_gazebo::ikRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_gazebo::ikRequest> should match
// service_traits::DataType< ::arm_gazebo::ik >
template<>
struct DataType< ::arm_gazebo::ikRequest>
{
  static const char* value()
  {
    return DataType< ::arm_gazebo::ik >::value();
  }
  static const char* value(const ::arm_gazebo::ikRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::arm_gazebo::ikResponse> should match
// service_traits::MD5Sum< ::arm_gazebo::ik >
template<>
struct MD5Sum< ::arm_gazebo::ikResponse>
{
  static const char* value()
  {
    return MD5Sum< ::arm_gazebo::ik >::value();
  }
  static const char* value(const ::arm_gazebo::ikResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_gazebo::ikResponse> should match
// service_traits::DataType< ::arm_gazebo::ik >
template<>
struct DataType< ::arm_gazebo::ikResponse>
{
  static const char* value()
  {
    return DataType< ::arm_gazebo::ik >::value();
  }
  static const char* value(const ::arm_gazebo::ikResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_IK_H
