#!/bash/bin -x

head=0;
tail=0;
i=1;
while [[ $head -ne 22 && $tail -ne 22 ]]
do
  a=$((RANDOM % 2));
   if [ $a -eq 1 ];
      then
#      echo "Head $head"
      ((head++));
      else
 #     echo " Tail $tail"
      ((tail++));
   fi
      if [ $head -eq 21 ];
      then
         echo "head flipped 21 times"
			echo "Tail flipped $tail times"
			echo " head won "$(( $head - $tail )) "times";
			b=`echo $head $i | awk '{print $1/$2}'`;
			c=`echo $b 100 | awk '{print $1*$2}'`;
				echo "percentae head "$c
         d=`echo $tail $i | awk '{print $1/$2}'`;
         e=`echo $d 100 | awk '{print $1*$2}'`;
            echo "percentage tail  "$e

	      exit;
      fi
      if [ $tail -eq 21 ];
      then
         echo "Tail flipped 21 times"
			echo "Head flipped $head times"
			echo "Tail won "$(( $tail - $head )) "times";
			 b=`echo $head $i | awk '{print $1/$2}'`;
         c=`echo $b 100 | awk '{print $1*$2}'`;
            echo "percentae head "$c
         d=`echo $tail $i | awk '{print $1/$2}'`;
         e=`echo $d 100 | awk '{print $1*$2}'`;
            echo "percentage tail  "$e
      exit;
      fi
((i++))
done
echo $i
