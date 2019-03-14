#!/usr/bin/env ruby

require 'fileutils'

DOT_DIR = File.expand_path(File.dirname(__FILE__))

files = %w(
  .zshrc
  .Xresources
  .gitconfig
  .config/i3/config
  .config/i3status/config
  .config/nvim/init.vim
  .config/user-dirs.dirs
  .gnupg/gpg-agent.conf
  .config/nvim/indent/coffee.vim
  .config/nvim/indent/javascript.vim
  .config/nvim/indent/java.vim
  .config/nvim/indent/kotlin.vim
  .config/nvim/indent/ruby.vim
  .config/nvim/indent/typescript.vim
)
dirs = files.map { |n| File.dirname n }.select { |d| d != '.' }
dirs << '.vim/swap'

def mkdir(name)
  full_name = "#{Dir.home}/#{name}"
  FileUtils.mkdir_p(File.join(Dir.home, name)) unless File.exist? full_name
end

def link_file(name)
  home_name = "#{Dir.home}/#{name}"
  File.unlink home_name if File.symlink? home_name
  File.delete home_name if File.exist? home_name
  File.symlink("#{DOT_DIR}/#{name}", home_name)
end

dirs.each { |name| mkdir name }
files.each { |name| link_file name }
