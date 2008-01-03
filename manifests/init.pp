# modules/vim/manifests/init.pp - manage vim stuff
# Copyright (C) 2007 admin@immerda.ch
#

modules_dir { "vim": }

class vim {

        package { 'vim':
                name => $operatingsystem ? {
                        centos => vim-enhanced,
                        default => vim,
                },
                alias => vim,
                category => $operatingsystem ? {
                        gentoo => 'app-editors',
                        default => '',
                },
                ensure => present,
		source => $operatingsystem ? {
			openbsd => 'ftp://mirror.switch.ch/pub/OpenBSD/4.2/packages/i386/vim-7.1.33-no_x11.tgz',
			default => unset,
		},
        }
}

