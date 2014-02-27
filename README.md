#make -h

-n, --just-print, --dry-run, --recon
  Don't actually run any commands; just print them.


#make
echo This makefile did not clean the dir... good
This makefile did not clean the dir... good

#make clean

#make -n clean
rm -f dummy.txt

