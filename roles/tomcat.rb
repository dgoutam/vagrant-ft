name "java-app-server"
description "Install Tomcat 6 on Ubuntu"
run_list("recipe[tomcat]")
override_attributes(
  'tomcat' => {
    'java_options' => "${JAVA_OPTS} -Xmx128M -Djava.awt.headless=true"
  }
)
