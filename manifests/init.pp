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
        }
}

