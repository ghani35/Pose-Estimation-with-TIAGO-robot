// Generated by gencpp from file pal_detection_msgs/Obstacles.msg
// DO NOT EDIT!


#ifndef PAL_DETECTION_MSGS_MESSAGE_OBSTACLES_H
#define PAL_DETECTION_MSGS_MESSAGE_OBSTACLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <pal_detection_msgs/Obstacle.h>

namespace pal_detection_msgs
{
template <class ContainerAllocator>
struct Obstacles_
{
  typedef Obstacles_<ContainerAllocator> Type;

  Obstacles_()
    : header()
    , obstacles()  {
    }
  Obstacles_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , obstacles(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::pal_detection_msgs::Obstacle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::pal_detection_msgs::Obstacle_<ContainerAllocator> >::other >  _obstacles_type;
  _obstacles_type obstacles;





  typedef boost::shared_ptr< ::pal_detection_msgs::Obstacles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_detection_msgs::Obstacles_<ContainerAllocator> const> ConstPtr;

}; // struct Obstacles_

typedef ::pal_detection_msgs::Obstacles_<std::allocator<void> > Obstacles;

typedef boost::shared_ptr< ::pal_detection_msgs::Obstacles > ObstaclesPtr;
typedef boost::shared_ptr< ::pal_detection_msgs::Obstacles const> ObstaclesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_detection_msgs::Obstacles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pal_detection_msgs::Obstacles_<ContainerAllocator1> & lhs, const ::pal_detection_msgs::Obstacles_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.obstacles == rhs.obstacles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pal_detection_msgs::Obstacles_<ContainerAllocator1> & lhs, const ::pal_detection_msgs::Obstacles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pal_detection_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_detection_msgs::Obstacles_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_detection_msgs::Obstacles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_detection_msgs::Obstacles_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c4fe5c1629f0ad5a12021b94478d4518";
  }

  static const char* value(const ::pal_detection_msgs::Obstacles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc4fe5c1629f0ad5aULL;
  static const uint64_t static_value2 = 0x12021b94478d4518ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_detection_msgs/Obstacles";
  }

  static const char* value(const ::pal_detection_msgs::Obstacles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"Obstacle[] obstacles\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: pal_detection_msgs/Obstacle\n"
"int64 id\n"
"\n"
"geometry_msgs/Point position\n"
"\n"
"float64[4] position_covariance\n"
"\n"
"float32 width\n"
"\n"
"float32 height\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::pal_detection_msgs::Obstacles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.obstacles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Obstacles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_detection_msgs::Obstacles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_detection_msgs::Obstacles_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "obstacles[]" << std::endl;
    for (size_t i = 0; i < v.obstacles.size(); ++i)
    {
      s << indent << "  obstacles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pal_detection_msgs::Obstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_DETECTION_MSGS_MESSAGE_OBSTACLES_H
