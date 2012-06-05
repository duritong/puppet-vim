# modules/vim/manifests/init.pp - manage vim stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3
#

class vim {
  case $::operatingsystem {
    openbsd: { include vim::openbsd }
    gentoo: { include vim::gentoo }
    centos: { include vim::centos }
    default: { include vim::base }
  } 
}
