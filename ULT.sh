echo "User Login Tracker"
UserName=$(whoami)
echo "$UserName"
LoginTime=$(date '+%Y-%m-%d %H:%M:%S')
echo "$LoginTime"
echo "User-Name: $UserName | Login-Time: $LoginTime" >> ult_logs.txt

