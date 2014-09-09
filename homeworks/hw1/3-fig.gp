set terminal epslatex
set output "3-1.tex"

f_1(x,y)=(x*x + y*y < 25)?1:1/0
unset colorbox
set isosample 300, 300
set xlabel 'x'
set ylabel 'y'
set sample 300
set pm3d map
splot [-10:10] [-10:10] f_1(x,y) t '$A_z: x^2 + y^2 \le z^2$ for $z=5$'

set output "3-2.tex"
f_2(x,y) = ((x > 0) * (y > 0) * (x + y > 5))?1:1/0
splot [-10:10] [-10:10] f_2(x,y) t '$B_z: x>0,\; y>0,\; x+y\ge z$ for $z=5$'

set output "3-3.tex"
f_3(x,y) = ((y>0) * (x>0) * (y<1) * (x<1) * (x>y))?1:1/0
splot [-10:10] [-10:10] f_3(x,y) t '$C: 0 \le y \le x \le 1$'

set output "3-4.tex"
f_4(x,y) = ((x*x + y*y < 25) * (x > 0) * (y > 0) * (x + y > 5))?1:1/0
splot [-10:10] [-10:10] f_4(x,y) t '$A_5 \cap B_3$'

set output "3-5.tex"
f_5(x,y) = (x < 3)?1:1/0
splot [-10:10] [-10:10] f_5(x,y) t '$D_z: x \le z$ for $z=3$'

set output "3-6.tex"
f_6(x,y) = ((x > 0) * (y > 0) * (x + y > 3) + (x < 3))?1:1/0
splot [-10:10] [-10:10] f_6(x,y) t '$B_z \cup D_z$ for $z=3$'

set output