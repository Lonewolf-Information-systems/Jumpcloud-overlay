Jumpcloud-overlay , UNoffical Overlay for Gentoo Linux 
=======================================================

![logo](media/8268ad5b36d9ead4e7356dd806bf642d.png)

(Funtoo/Sabayon ETC or CoreOS Google ChromeOS Linux, Redcore Clover or other
Gentoo Related Distros.)

**https://github.com/TheJumpCloud** main source of packages...

Why Jumpcloud , keeping track of Keys , jumping windows/Linux boxes , Makes admin of lots of boxes or users scattered globally or Devboxes rented globally less of a  hell. 

having the ability to drop cronjobs on boxes and build crap in gentoo usefull  via the agent.

Windows choco upgrade all -y @ all the pc's in my house its sweet. 

## gentoo or sabayon boxes also would be a sweet plus. 
## Gentoo: emerge-webrsync && gentoo-update.sh 
sabayon boxes:  equo up && equo u && emerge-webrsync  (emerge --upgrade mypackage/s if a few one need to build) 

Jumpcloud :  
**Active Directory® & LDAP Reimagined**

**JumpCloud’s** Directory-as-a-Service® centralizes and simplifies identity
management. Give your users one set of credentials to securely access their
systems, apps, networks, and file servers – regardless of platform, protocol,
provider, or location.

\-----------------

\#\#\# Getting keys and Secrets

**{ x-connect-key: 123456 (your real key won’t be 123456. However for Demo
purposes …)**

curl --tlsv1.2 --silent --show-error --header 'x-connect-key: 123456'
https://kickstart.jumpcloud.com/Kickstart \| \> jumpcloud-secrets.txt

(\| sudo bash) supports redhat etc. And auto configs deps for Debian/Redhat etc.

as mentioned on Systems TAB. <https://console.jumpcloud.com/#/systems/new>

However a dump file should be ok ,

to pick out a few needful things. ie certificate keys etc. directories the agent
uses etc.

**It is however a Manual Work around**

I am attempting to setup a few ebuilds and repo ,

\---------------------

**at present , the Jumpcloud API in Python/ruby is Easily doable. Into ebuild
package.**

**Binary agent and services with Gentoo Linux , app-admin/jumpcloud-agent-bin
(if jumpcloud team has agent url/s )**

**so the curl will add keys etc.**

**After adding packages.**

#######Package conversion ,
entropy conversion:
emerge -bav package-name 
equo smart inflate /usr/portage/packages/catagory/packagename.tar.bz2 --savedir /home/$usename/
(else sabayon devkit/docker https://wiki.sabayon.org/index.php?title=En:Sabayon_Devkit , also capable of generating Gentoo binaries as well.) 


 with Gentoo portage (Quick Example) cd DIR
dev-python/pyjumpcloud ebuild pyjumpcloud-2.x.ebuild rpm ,
/var/temp/portage/dev-python/pyjumpcloud/... yank out RPM , alien can convert it
to deb etc. and or RPM spec etc.

emerge -av dev-python/pyjumpcloud should build the python lib , and install.
--buildpkg will also make a binary tarpkg.
