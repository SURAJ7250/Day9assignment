IS_PART_TIME=1
IS_FULL_TIME=2
IS_ABSCENT=0
MAX_HRS_IN_MONTH=12
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEMPHr=0
tptalWorkingDays=0
declare -A dailywage;
function getWorking()
{
case $1 in
$IS_FULL_TIME)
EMPHrs=8
;;
$IS_PART_TIME)
empHrs=4
;;
$IS_ABSCENT)
empHrs=0
;;
esac
echo "$empHrs"
}
function getEmpWage()
{
echo $(($1*$EMP_RATE_PER_HR));
}
while [[$totalEmpHr -lt $max_HRS_IN_MONTH && 
        $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
((totalWorkingDays++))
WHour=$(getWorkHrs $(($RANDOM%3)))
totalEmpHr=$(($totalEmpHr+$WHour))
dailyWage[$totalWorkingDays]=$(getEmpWage $wHour)
done
totalSalary=$(($totalEmpHr*$Emp_RATE_PER_HR))
echo "${dailyWage[@]}"
echo "${!dailyWage[@]}"
