// Generated by gencpp from file arm_gazebo/GripCommand.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_GRIPCOMMAND_H
#define ARM_GAZEBO_MESSAGE_GRIPCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_gazebo
{
template <class ContainerAllocator>
struct GripCommand_
{
  typedef GripCommand_<ContainerAllocator> Type;

  GripCommand_()
    : grip_command()  {
    }
  GripCommand_(const ContainerAllocator& _alloc)
    : grip_command(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _grip_command_type;
  _grip_command_type grip_command;





  typedef boost::shared_ptr< ::arm_gazebo::GripCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_gazebo::GripCommand_<ContainerAllocator> const> ConstPtr;

}; // struct GripCommand_

typedef ::arm_gazebo::GripCommand_<std::allocator<void> > GripCommand;

typedef boost::shared_ptr< ::arm_gazebo::GripCommand > GripCommandPtr;
typedef boost::shared_ptr< ::arm_gazebo::GripCommand const> GripCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_gazebo::GripCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_gazebo::GripCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_gazebo::GripCommand_<ContainerAllocator1> & lhs, const ::arm_gazebo::GripCommand_<ContainerAllocator2> & rhs)
{
  return lhs.grip_command == rhs.grip_command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_gazebo::GripCommand_<ContainerAllocator1> & lhs, const ::arm_gazebo::GripCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_gazebo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::GripCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::GripCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::GripCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::GripCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::GripCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::GripCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_gazebo::GripCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "983372b7e58e6a3145a0215cb040ed6f";
  }

  static const char* value(const ::arm_gazebo::GripCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x983372b7e58e6a31ULL;
  static const uint64_t static_value2 = 0x45a0215cb040ed6fULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_gazebo::GripCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_gazebo/GripCommand";
  }

  static const char* value(const ::arm_gazebo::GripCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_gazebo::GripCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string grip_command\n"
;
  }

  static const char* value(const ::arm_gazebo::GripCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_gazebo::GripCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grip_command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_gazebo::GripCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_gazebo::GripCommand_<ContainerAllocator>& v)
  {
    s << indent << "grip_command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.grip_command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_GRIPCOMMAND_H
