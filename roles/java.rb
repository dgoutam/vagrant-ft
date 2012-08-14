name "java"
description "Install Oracle Java on Ubuntu"
# Chef::Log.info "in roles file value of app_dir = #{app_dir}"
Chef::Log.info "in roles file value of app_dir *********"
override_attributes(
  "java" => {
     "install_flavor" => "oracle",
     "jdk_version" => "7",
     "jdk" => {
       "7" => {
         "i586" => {
           "url" => "http://172.16.31.55/jdk-7-linux-i586.tar.gz"
         }
       }
     }
  }
)
run_list(
  "recipe[java]"
)

