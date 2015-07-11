#!/usr/bin/env ruby

require 'fileutils'

DOT_DIR = File.expand_path(File.dirname(__FILE__))

files = %w(
  .zshrc
  .vimrc
  .config/i3/config
  .config/i3status/config
  .vim/indent/ruby.vim
)
dirs = files.map {|n| File.dirname n}.select {|d| d != '.'}

def mkdir(name)
  if not File.exist? "#{Dir.home}/#{name}"
    FileUtils.mkdir_p(File.join(Dir.home, name))
  end
end

def link_file(name)
  home_name = "#{Dir.home}/#{name}"
  if File.symlink? home_name
    File.unlink home_name
  end
  if File.exist? home_name
    File.delete home_name
  end
  File.symlink("#{DOT_DIR}/#{name}", home_name)
end

dirs.each {|name| mkdir name}
files.each {|name| link_file name}
