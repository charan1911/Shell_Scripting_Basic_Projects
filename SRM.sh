echo ''
echo '--------------------'
echo "System Resource Monitor"
echo "--------------------"

echo " "

echo "CPU Usage"
top -bn1 | grep "Cpu(s)" | awk '{Used=100-$8;printf"USED CPU% : %.2f%%\n",Used}'
# top -bn1 | grep "Cpu(s)" | awk '{printf"%.2f%%\n",100-$8}'

echo ''

echo "Memory Usage"
free | awk 'NR==2{printf"Memory Usage : %.2f%%\n",($3/$2)*100}'

echo " "

echo "Disk Usage"
df -h | awk '$NF=="/"{printf"Disk Usage: %.4f%%\n",($3/$2)*100}'
echo ''
