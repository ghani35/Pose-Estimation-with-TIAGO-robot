//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the tiago_pcl_tutorial package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __tiago_pcl_tutorial__SEGMENTCONFIG_H__
#define __tiago_pcl_tutorial__SEGMENTCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace tiago_pcl_tutorial
{
  class segmentConfigStatics;

  class segmentConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(segmentConfig &config, const segmentConfig &max, const segmentConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const segmentConfig &config1, const segmentConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, segmentConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const segmentConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, segmentConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const segmentConfig &config) const = 0;
      virtual void getValue(const segmentConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T segmentConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T segmentConfig::* field;

      virtual void clamp(segmentConfig &config, const segmentConfig &max, const segmentConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const segmentConfig &config1, const segmentConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, segmentConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const segmentConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, segmentConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const segmentConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const segmentConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, segmentConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, segmentConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<segmentConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(segmentConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("setLeafSize_X"==(*_i)->name){setLeafSize_X = boost::any_cast<double>(val);}
        if("setLeafSize_Y"==(*_i)->name){setLeafSize_Y = boost::any_cast<double>(val);}
        if("setLeafSize_Z"==(*_i)->name){setLeafSize_Z = boost::any_cast<double>(val);}
        if("Distance_Threshold"==(*_i)->name){Distance_Threshold = boost::any_cast<double>(val);}
        if("Radius_Limit"==(*_i)->name){Radius_Limit = boost::any_cast<double>(val);}
        if("Optimize_Coefficients"==(*_i)->name){Optimize_Coefficients = boost::any_cast<bool>(val);}
        if("image"==(*_i)->name){image = boost::any_cast<int>(val);}
        if("method"==(*_i)->name){method = boost::any_cast<int>(val);}
      }
    }

    double setLeafSize_X;
double setLeafSize_Y;
double setLeafSize_Z;
double Distance_Threshold;
double Radius_Limit;
bool Optimize_Coefficients;
int image;
int method;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double setLeafSize_X;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double setLeafSize_Y;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double setLeafSize_Z;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double Distance_Threshold;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double Radius_Limit;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool Optimize_Coefficients;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int image;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int method;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("segmentConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const segmentConfig &__max__ = __getMax__();
      const segmentConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const segmentConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const segmentConfig &__getDefault__();
    static const segmentConfig &__getMax__();
    static const segmentConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const segmentConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void segmentConfig::ParamDescription<std::string>::clamp(segmentConfig &config, const segmentConfig &max, const segmentConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class segmentConfigStatics
  {
    friend class segmentConfig;

    segmentConfigStatics()
    {
segmentConfig::GroupDescription<segmentConfig::DEFAULT, segmentConfig> Default("Default", "", 0, 0, true, &segmentConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.setLeafSize_X = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.setLeafSize_X = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.setLeafSize_X = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("setLeafSize_X", "double", 0, "A double parameter", "", &segmentConfig::setLeafSize_X)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("setLeafSize_X", "double", 0, "A double parameter", "", &segmentConfig::setLeafSize_X)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.setLeafSize_Y = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.setLeafSize_Y = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.setLeafSize_Y = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("setLeafSize_Y", "double", 0, "A double parameter", "", &segmentConfig::setLeafSize_Y)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("setLeafSize_Y", "double", 0, "A double parameter", "", &segmentConfig::setLeafSize_Y)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.setLeafSize_Z = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.setLeafSize_Z = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.setLeafSize_Z = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("setLeafSize_Z", "double", 0, "A double parameter", "", &segmentConfig::setLeafSize_Z)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("setLeafSize_Z", "double", 0, "A double parameter", "", &segmentConfig::setLeafSize_Z)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.Distance_Threshold = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.Distance_Threshold = 8.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.Distance_Threshold = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("Distance_Threshold", "double", 0, "A double parameter", "", &segmentConfig::Distance_Threshold)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("Distance_Threshold", "double", 0, "A double parameter", "", &segmentConfig::Distance_Threshold)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.Radius_Limit = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.Radius_Limit = 8.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.Radius_Limit = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("Radius_Limit", "double", 0, "A double parameter", "", &segmentConfig::Radius_Limit)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<double>("Radius_Limit", "double", 0, "A double parameter", "", &segmentConfig::Radius_Limit)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.Optimize_Coefficients = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.Optimize_Coefficients = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.Optimize_Coefficients = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<bool>("Optimize_Coefficients", "bool", 0, "A bool parameter", "", &segmentConfig::Optimize_Coefficients)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<bool>("Optimize_Coefficients", "bool", 0, "A bool parameter", "", &segmentConfig::Optimize_Coefficients)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.image = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.image = 3;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.image = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<int>("image", "int", 0, "A PointCloud2 origin param which is edited via an enum", "{'enum_description': 'An enum to choose origin PointCloud2', 'enum': [{'srcline': 15, 'description': 'original image', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'original_image'}, {'srcline': 16, 'description': 'filtered image', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'filtered_image'}]}", &segmentConfig::image)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<int>("image", "int", 0, "A PointCloud2 origin param which is edited via an enum", "{'enum_description': 'An enum to choose origin PointCloud2', 'enum': [{'srcline': 15, 'description': 'original image', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'original_image'}, {'srcline': 16, 'description': 'filtered image', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'filtered_image'}]}", &segmentConfig::image)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.method = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.method = 3;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.method = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<int>("method", "int", 0, "A PointCloud2 origin param which is edited via an enum", "{'enum_description': 'An enum to choose method', 'enum': [{'srcline': 20, 'description': 'Plane', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Plane'}, {'srcline': 21, 'description': 'Cylindrical', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Cylindrical'}, {'srcline': 22, 'description': 'Euclidean', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Euclidean'}]}", &segmentConfig::method)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(segmentConfig::AbstractParamDescriptionConstPtr(new segmentConfig::ParamDescription<int>("method", "int", 0, "A PointCloud2 origin param which is edited via an enum", "{'enum_description': 'An enum to choose method', 'enum': [{'srcline': 20, 'description': 'Plane', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Plane'}, {'srcline': 21, 'description': 'Cylindrical', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Cylindrical'}, {'srcline': 22, 'description': 'Euclidean', 'srcfile': '/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Euclidean'}]}", &segmentConfig::method)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(segmentConfig::AbstractGroupDescriptionConstPtr(new segmentConfig::GroupDescription<segmentConfig::DEFAULT, segmentConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<segmentConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<segmentConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<segmentConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    segmentConfig __max__;
    segmentConfig __min__;
    segmentConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const segmentConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static segmentConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &segmentConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const segmentConfig &segmentConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const segmentConfig &segmentConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const segmentConfig &segmentConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<segmentConfig::AbstractParamDescriptionConstPtr> &segmentConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<segmentConfig::AbstractGroupDescriptionConstPtr> &segmentConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const segmentConfigStatics *segmentConfig::__get_statics__()
  {
    const static segmentConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = segmentConfigStatics::get_instance();

    return statics;
  }

//#line 15 "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg"
      const int segment_original_image = 0;
//#line 16 "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg"
      const int segment_filtered_image = 1;
//#line 20 "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg"
      const int segment_Plane = 0;
//#line 21 "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg"
      const int segment_Cylindrical = 1;
//#line 22 "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/cfg/segment.cfg"
      const int segment_Euclidean = 2;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __SEGMENTRECONFIGURATOR_H__
