// Generated by gencpp from file pal_navigation_msgs/ChangeMap.msg
// DO NOT EDIT!


#ifndef PAL_NAVIGATION_MSGS_MESSAGE_CHANGEMAP_H
#define PAL_NAVIGATION_MSGS_MESSAGE_CHANGEMAP_H

#include <ros/service_traits.h>


#include <pal_navigation_msgs/ChangeMapRequest.h>
#include <pal_navigation_msgs/ChangeMapResponse.h>


namespace pal_navigation_msgs
{

struct ChangeMap
{

typedef ChangeMapRequest Request;
typedef ChangeMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChangeMap
} // namespace pal_navigation_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pal_navigation_msgs::ChangeMap > {
  static const char* value()
  {
    return "d94d07fe99163246282ff874dec03f26";
  }

  static const char* value(const ::pal_navigation_msgs::ChangeMap&) { return value(); }
};

template<>
struct DataType< ::pal_navigation_msgs::ChangeMap > {
  static const char* value()
  {
    return "pal_navigation_msgs/ChangeMap";
  }

  static const char* value(const ::pal_navigation_msgs::ChangeMap&) { return value(); }
};


// service_traits::MD5Sum< ::pal_navigation_msgs::ChangeMapRequest> should match
// service_traits::MD5Sum< ::pal_navigation_msgs::ChangeMap >
template<>
struct MD5Sum< ::pal_navigation_msgs::ChangeMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pal_navigation_msgs::ChangeMap >::value();
  }
  static const char* value(const ::pal_navigation_msgs::ChangeMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pal_navigation_msgs::ChangeMapRequest> should match
// service_traits::DataType< ::pal_navigation_msgs::ChangeMap >
template<>
struct DataType< ::pal_navigation_msgs::ChangeMapRequest>
{
  static const char* value()
  {
    return DataType< ::pal_navigation_msgs::ChangeMap >::value();
  }
  static const char* value(const ::pal_navigation_msgs::ChangeMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pal_navigation_msgs::ChangeMapResponse> should match
// service_traits::MD5Sum< ::pal_navigation_msgs::ChangeMap >
template<>
struct MD5Sum< ::pal_navigation_msgs::ChangeMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pal_navigation_msgs::ChangeMap >::value();
  }
  static const char* value(const ::pal_navigation_msgs::ChangeMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pal_navigation_msgs::ChangeMapResponse> should match
// service_traits::DataType< ::pal_navigation_msgs::ChangeMap >
template<>
struct DataType< ::pal_navigation_msgs::ChangeMapResponse>
{
  static const char* value()
  {
    return DataType< ::pal_navigation_msgs::ChangeMap >::value();
  }
  static const char* value(const ::pal_navigation_msgs::ChangeMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PAL_NAVIGATION_MSGS_MESSAGE_CHANGEMAP_H
