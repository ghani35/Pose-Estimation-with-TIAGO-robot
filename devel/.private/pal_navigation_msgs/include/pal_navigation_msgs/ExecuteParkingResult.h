// Generated by gencpp from file pal_navigation_msgs/ExecuteParkingResult.msg
// DO NOT EDIT!


#ifndef PAL_NAVIGATION_MSGS_MESSAGE_EXECUTEPARKINGRESULT_H
#define PAL_NAVIGATION_MSGS_MESSAGE_EXECUTEPARKINGRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pal_navigation_msgs
{
template <class ContainerAllocator>
struct ExecuteParkingResult_
{
  typedef ExecuteParkingResult_<ContainerAllocator> Type;

  ExecuteParkingResult_()
    {
    }
  ExecuteParkingResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> const> ConstPtr;

}; // struct ExecuteParkingResult_

typedef ::pal_navigation_msgs::ExecuteParkingResult_<std::allocator<void> > ExecuteParkingResult;

typedef boost::shared_ptr< ::pal_navigation_msgs::ExecuteParkingResult > ExecuteParkingResultPtr;
typedef boost::shared_ptr< ::pal_navigation_msgs::ExecuteParkingResult const> ExecuteParkingResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace pal_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_navigation_msgs/ExecuteParkingResult";
  }

  static const char* value(const ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
;
  }

  static const char* value(const ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecuteParkingResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::pal_navigation_msgs::ExecuteParkingResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // PAL_NAVIGATION_MSGS_MESSAGE_EXECUTEPARKINGRESULT_H
