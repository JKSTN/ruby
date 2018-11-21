
#HASSAN COMMENTS:
#  that takes care of most of the commands you'd need, the rest you'd learn as you go along
#
#i've moved this file from outside into this folder, to keep tasks segregated
#
#more importantly, the extention has been changed from .rb to .sh
#.rb is for ruby scripts, .sh is for bash scripts. Bash is the name of the terminal you use when you're writing commands
#and you can create scripts which execute one line at a time (like windows .bat files of old)
#


mkdir apps

git clone https://github.com/JKSTN/ruby

mv ruby apps

cd Desktop/apps/ruby/1_basic_linux_stuff

touch testing.rb 

subl testing.rb

ruby testing.rb 

mkdir testing1

touch testing1.rb 

subl testing1.rb 

cd 

cd Desktop/apps/ruby 

ruby 1_basic_linux_stuff/testing1.rb

rm 1_basic_linux_stuff/testing1.rb
rm -r 1_basic_linux_stuff/testing1