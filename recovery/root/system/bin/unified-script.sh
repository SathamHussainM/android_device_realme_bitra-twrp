#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX3370IN()
{
      echo "Setting up props for RXM3370IN"
      resetprop "ro.build.product" "RMX3370"
      resetprop "ro.product.model" "RMX3370"
      resetprop "ro.product.device" "RE879AL1"
      resetprop "ro.product.product.device" "RE879AL1"
      resetprop "ro.commonsoft.ota" "RE879AL1"
      resetprop "ro.separate.soft" "2169A"
}

load_RMX3370EU()
{
      echo "Setting up props for RMX3370EU"
      resetprop "ro.build.product" "RMX3370"
      resetprop "ro.product.model" "RMX3370"
      resetprop "ro.product.device" "RE879AL1"
      resetprop "ro.product.product.device" "RE879AL1"
      resetprop "ro.commonsoft.ota" "RE879AL1"
      resetprop "ro.separate.soft" "2169B"
}

load_RMX3370CN()
{
      echo "Setting up props for RMX3370CN"
      resetprop "ro.build.product" "RMX3370"
      resetprop "ro.product.model" "RMX3370"
      resetprop "ro.product.device" "RE5473"
      resetprop "ro.product.product.device" "RE5473"
      resetprop "ro.commonsoft.ota" "RE5473"
      resetprop "ro.separate.soft" "21619"
}

project=$(cat /proc/oplusVersion/prjName)
echo $project

case $project in
     "2169A")
         load_RMX3370IN
              ;;
     "2169B")
          load_RMX3370EU
              ;;
     "21619")
          load_RMX3370CN
              ;;
           *)
          load_RMX3370IN
              ;;

esac

exit 0
