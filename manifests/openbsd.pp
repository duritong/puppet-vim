class vim::openbsd {
  case $::operatingsystemrelease {
    '4.3': { openbsd::special_package{'vim-7.1.244p0-no_x11': } }
    default: { openbsd::special_package{'vim-7.3.3p1-no_x11': } }
  }
}
