randomCheck=$((RANDOM));
perHoursSalary=20;
workingHours=8;
case $randomCheck in
0)
echo "Employee absent";
workingHours=0;
;;
1)
echo "Employee present";
workingHours=20;
;;
2)
echo "Employee is working as part time";
workingHours=8;
;;
*)
echo "not matching";
esac
salary=$(($perHoursSalary * $workingHours));
echo "Employee has earned $salary $ today";
