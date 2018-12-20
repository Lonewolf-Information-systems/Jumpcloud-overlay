#Setup Jumpcloud Using newest overlay Manager tool.
## if Exsisits use eselect repository 

### to do fix to proper functions 
## eselect repository  is newer and more preffered over older layman 
## use layman if the only option 
## fail ? , make the path drop in config file ie wget/cat.. 

# else layman 
#layman -f -a jumpcloud -o https://raw.github.com/https://raw.githubusercontent.com/Lonewolf-Information-systems/Jumpcloud-overlay/master/overlay.xml
# mkdir -p /etc/portage/repos.conf
# else wget https://raw.githubusercontent.com/Lonewolf-Information-systems/Jumpcloud-overlay/master/jumpcloud-overlay.conf > /etc/portage/repos.conf
# 
eselect repository add jumpcloud git https://github.com/Lonewolf-Information-systems/Jumpcloud-overlay.git
## autogenerate /etc/portage/repos.conf  eslect repos.conf entery into file. 
## sync repo to build packages. 
emaint sync --repo jumpcloud