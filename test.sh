#!/bin/sh
# Alex Sh: Test shell script
#
# Give execution permissions and run:
# $ chmod 775 test.sh
# $ ./test.sh

yellow='\E[1;33m'
NC='\033[0m'

# print to terminal
echo -e "${yellow}1. Test script print ${NC}"
echo ""

# comment out
# echo "2. Commented out"

# commented out block
:<<'END'
echo "3. Commented out block"
END

# print output of command
echo -e "${yellow}4. Output of pwd is: ${NC} $(pwd)"
echo ""

# print all script arguments
echo -e "${yellow}5. Script arguments:  ${NC} $@"
echo ""

# print script arguments
echo -e "${yellow}6. Script arguments: ${NC}"
echo "First script argument: ${1}"
echo "First script argument: ${2}"
echo ""

# read variable and print
echo -e "${yellow}7. Enter something...${NC}"
read Var
echo "You have entered: ${Var}"
echo ""

# if statement
echo -e "${yellow}8. '"'if'"' statement: check if the value you entered earlier is 123 ${NC}"
if [ ${Var} = 123 ]
then
  echo "You have entered: 123"
else
  echo "You have not entered: 123"
  echo "You have entered: ${Var}"
fi
echo ""

# if statement
echo -e "${yellow}11. '"'if'"' statement: search for file ${NC}"
echo "Files in current directory:"
ls
echo "Enter a file name to check existance in current directory..."
read fileName
if [ -e ${fileName} ]
then
  echo "There is such file"
else
  echo "No such file"
fi
echo ""

# if statement
echo -e "${yellow}12. '"'if'"' statement ${NC}"
echo "Enter a number to check if it's even or odd..."
read testNum
if [ $((${testNum} % 2)) -eq 0 ]
then
  echo "Even"
else
  echo "Odd"
fi
echo ""

# for loop
echo -e "${yellow}9. '"'for'"' loop with counter ${NC}"
for i in $(seq 5)
do
  echo "Value: ${i}"
done
echo ""

# for loop
echo -e "${yellow}10. '"'for'"' loop: show all files in directory${NC}"
j=1
for i in $(ls)
do
  echo "File ${j}: ${i}"
  j=$((j+1))
done
echo ""
