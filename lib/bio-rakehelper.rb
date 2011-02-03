# bio-rakehelper.rb: Helper methods simplifying Rakefiles
#
# copyright (c) 2011 Hiroyuki MISHIMA
# ( missy at be.to / hmishima at nagasaki-u.ac.jp )
# see README.rdoc and LICENCE for detail

require 'rubygems'
require 'bio'

module Bio
  class RakeHelper
    def suffix(objfile, dependency)
      objext = ""
      srcext = ""
      dependency.each do |key, value|
        objext = key
        srcext = value
      end
      objfile.sub(/#{Regexp.escape(objext)}$/, srcext)
    end

    def suffix_proc(dependency)
      proc {|fn|
        suffix(fn, dependency)}
    end
  end
end
