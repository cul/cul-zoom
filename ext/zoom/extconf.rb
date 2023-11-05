# frozen_string_literal: true

require "mkmf"
require "pkg-config"

if PKGConfig.have_package("yaz")
  append_cflags PKGConfig.cflags('yaz')
  append_ldflags PKGConfig.libs('yaz')
elsif system('yaz-config') # for compatibility with older yaz installations
  append_cflags `yaz-config --cflags`
  append_ldflags `yaz-config --libs`
else
  warn "yaz development files do not appear to be installed"
  exit(false)
end

unless have_header("yaz/zoom.h")
  warn "yaz zoom header not available"
  exit
end

create_makefile("zoom")
