class vim::centos inherits vim::base {
  Package[vim]{
    name => vim-enhanced,
  }
  package{vim-minimal:
    ensure => present,
  }
}
