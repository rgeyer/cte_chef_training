maintainer       "Ryan J. Geyer"
maintainer_email "ryan.geyer@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures rjg_chef"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

depends "rs_utils"

recipe "rjg_chef::default","Prints a message to the output"

attribute "rjg_chef/custom_input",
  :display_name => "A Custom Chef Input",
  :choice => ["A", "B", "C"],
  :recipes => ["rjg_chef::default"],
  :required => "required"
