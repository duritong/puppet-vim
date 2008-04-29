# modules/vim/manifests/init.pp - manage vim stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3
#

#modules_dir { "vim": }

class vim {
    case $operatingsystem {
        openbsd: { include vim::opensbd }
        gentoo: { include vim::gentoo }
        centos: { include vim::centos }
        default: { include vim::base }
    } 
}

class vim::base {
    package { 'vim':
        ensure => present,
    }    
}

class vim::centos inherits vim::base {
    Package[vim]{
        name => vim-enhanced,
    }
    package{vim-minimal:
        ensure => present,
    }
}
class vim::gentoo inherits vim::base {
    Package[vim]{
        category => 'app-editors',
    }
}

class vim::openbsd inherits vim::base {
    Package[vim]{
		source => 'ftp://mirror.switch.ch/pub/OpenBSD/4.2/packages/i386/vim-7.1.33-no_x11.tgz',
    }
}

