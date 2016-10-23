# Two layers

srcfile=$1
width=$2
height=$3
frame=$4
QP0=$5
QP1=$6

./TAppEncoderStatic --SEIDecodedPictureHash -c my_encoder_lowdelay_P_main.cfg -c ../cfg/layers.cfg -i0 $srcfile -wdt0 $width -hgt0 $height -fr0 30 -i1 $srcfile -wdt1 $width -hgt1 $height -fr1 30 -f $frame -q0 $QP0 -q1 $QP1 -b test.bin -SBH 0
./TAppDecoderStatic -b test.bin -ls 2


