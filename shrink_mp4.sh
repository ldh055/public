
x=`ls *mp4 | grep -v -e -small` 
x=${x%.mp4}

echo -e "shrink $x.mp4 ? \c" 
read ans
[ "$ans" = "" ] && ans=y
if [ "$ans" != "y" ] ; then
 echo " no action " 
else
 ffmpeg -i $x.mp4 -b 1000000 -crf 28 -s 1080x720 $x-small.mp4
fi
echo HIT ENTER
read x

