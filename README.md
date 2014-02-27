The following tests the -i option and the '-' in front of 
commands to test that make ignores errors in these commands"
and continues processing

test case

#touch foo
#unlink cleanit

in bash shell

#sh -c "rm cleanit"
#rm: cannot remove `cleanit': No such file or directory


#make
rm: cannot remove `cleanit': No such file or directory
make: *** [clean] Error 1


#make -i
rm cleanit
rm: cannot remove `cleanit': No such file or directory
make: [clean] Error 1 (ignored)
rm foo



touch foo
#make clean2 -i
rm cleanit
rm: cannot remove `cleanit': No such file or directory
make: [clean2] Error 1 (ignored)
rm foo


