#! /bin/bash


#this is comment line

#echo "Hello World"

###########################################


#two type of variables system and user type

#System defined
#echo $BASH
#echo $BASH_VERSION
#echo $HOME
#echo "_________________"

#user defined
#name=CTR
#val1=10
#echo The name is $name
#echo value is $val1

###########################################

#1 user input

#echo "Enter your name"
#read name
#echo "You entered $name"

#2

#echo "Enter 3 number "
#read a b c
#echo you enterd $a $b $c 

#3

#read -p "username" user # -p used asks the user in same line of username 
#read -sp "password" pass # -s is used to make it silent like passwords

#echo -e "Enter the name of the file : \c" # -e and \c are used to make the cursor in same line
#read file

#echo
#echo "username is: $user"
#echo "Password is: $pass"


#4 read the array

#echo "Enter names: "
#read -a names  #-a is used to read the array 
#echo "Names : ${names[0]}, ${names[1]}" #format will be ${name[1]}

#5

#read
#echo $REPLY #if we not given any variable then it stores in default REPLY

###########################################

#1 pass arguments to a bash script
#$0 represents the file excuting file name like ./hello.sh

#echo $1 $2 $3 '>This are passed through argument'

#2 

#args=("$@")
#echo ${args[1]} ${args[2]} ${args[3]}
 #normally all arguments are stored in $@ so its like array here 
 #0th index will be first value of argument unlike normal pass

#3

#echo $@ # prints all the arguments

#4

#echo $#  #prints number of arguments 

###########################################

#if then statements

#structure

#if [condition]
#then
#	echo "statements "
#elif [[ condition ]]
#then
	#statements
#fi

#example 1

#a=2
#b=2

#if [ $a -eq $b ] #space should maintain 
#then
#	echo "it is equal"
#else
#	echo "it is not equal"
#fi

#example 2

#if (( 5 <= 3 )) #we need to use (( )) for <= >= == < >
#then
#	echo lesser
#elif [[ 5 > 3 ]] #>= <= not accepted with [[ ]]
#then
#	echo greater
#fi

#concept 
#integer comparison

#-eq - is equal to                 - if [ $a -eq $b ]
#-ne - is not equal to             - if [ $a -ne $b ]
#-gt - is greater than             - if [ $a -gt $b ]
#-ge - is greater than or equal to - if [ $a -ge $b ]
#-lt - is less than                - if [ $a -lt $b ]
#-le - is less than or equal to    - if [ $a -le $b ]

#<   - is less than                - if (( $a < $b ))
#<=  - is less than or equal to    - if (( $a <= $b ))
#>   - is greater than             - if (( $a > $b ))
#>=  - is greater than or equal to - if (( $a >= $b ))

#string Comparision

#=   - is equal to                 - if [ $a = $b ]
#==  - is equal to                 - if [ $a == $b ]
#!=  - is not equal to             - if [ $a != $b ]
#<   - is less than in ASCII order - if [[ $a < $b ]]
#>   - is greater than in ASCII order- if [[ $a > $b ]]
#-z  - string is null, zero length


###########################################

#File Test Operators

#echo -e "Enter the name of the file : \c"
#read file_name

#if [ -e $file_name ]
#then
#	echo $file_name found
#else
#	echo $file_name not found
#fi

#flags:
# -e to check if  it exist or not
# -f to check if it exists then is it regular file or not
# -d to check if it is directory
# -b to check if it is block file like image,binary files
# -c to check if it is character file
# -s to check if it is empty or not
# -r to check if it is readable
# -w to check if it is writable
# -x to check if it is excutable


###########################################

#append output to the text file

#echo -e "Enter the name of the file : \c"
#read file_name


#if [ -f $file_name ]
#then
#	if [ -w $file_name ]
#	then
#		echo "Type some text data , TO quit press CTRL + d"
#		cat >> $file_name
#	else
#		echo "The file do not have write permission"
#	fi
#else
#	echo "$file_name not exists"
#fi

###########################################
 
#Logical AND

#methods
#[] && []
#[[ --- && --- ]]
#[--- -a ---]

# 1
#age=20
#if [ $age -gt 18 ] && [ $age -lt 30 ]
#then
#	echo "Valid age"
#else
#	echo "Age is not valid"
#fi

#2

#age=2
#if [[ $age -gt 18  && $age -lt 30 ]]
#then
#	echo "Valid age"
#else
#	echo "Age is not valid"
#fi

#3

#age=20
#if [ $age -gt 18  -a $age -lt 30 ]
#then
#	echo "Valid age"
#else
#	echo "Age is not valid"
#fi

#############################################

#Logical Or

#methods

#[-o]
#[[  || ]]
#[] || []

#age=20
#if [ $age -eq 18  ] || [ $age -eq 30 ]
#then
#	echo "Valid age"
#else
#	echo "Age is not valid"
#fi


##################################################

#Arithmatic Operations

#a=4
#b=5

#echo $(( a+b ))
#echo $(( a-b ))
#echo $(( a*b ))
#echo $(( a/b ))
#echo $(( a%b ))
#echo
#echo $(expr $a + $b )
#echo $(expr $a - $b )
#echo $(expr $a \* $b ) # * needs \*
#echo $(expr $a / $b )
#echo $(expr $a % $b )



################################################

#Floating point math operations in bash |bc command

#bc is basic calculator which comes with linux
#bc -l  here -l indicates it includes math library

#a=20.5
#b=5

#echo 20.5+5 | bc
#echo 20.5-5 | bc
#echo 20.5*5 | bc
#echo "scale=2; 20.5/5" | bc
#echo 20.5%5 | bc

#d=25
#echo
#echo "scale=2; sqrt($d)" | bc -l
#echo "scale=2; 5^5" | bc -l
####################################################

#Case statement

#1
#vehicle=$1
#case  $vehicle in
#	"car" )
#		echo "this is car" ;;
#	"van" )
#	    echo "this is van" ;; 
#	* )
#		echo "this is default" ;;
#esac

#2
#echo -e "Enter some character : \c"
#read value

#case  $value in
#	[a-z] )
#		echo "User entered $value a to z" ;;
#	[A-Z] )
#	    echo "User entered $value A to Z" ;; 
#	[0-9] )
#		echo "User entered $value 0 to 9" ;;
#	? )
#	    echo "User entered $value Special character" ;; 
#	* )
#		echo "this is default" ;;
#esac
#if it shows wrong in terminal then set LANG=C

#####################################################

#Array Operations

#os=('a' 'b' 'c' 'd')
#echo "${os[@]}" #${os[@]} prints all the elements in array
#os[9997]='k' #it adds at the that index no matter what
#echo ${os[@]}
#echo ${os[0]}
#echo ${!os[@]} #${!os[@]} prints the indexs
#echo ${#os[@]} # prints the length

#unset os[2]  #delete

#echo ${os[@]}
#echo
#string=awedrvggv

#echo ${string[@]}
#echo ${string[0]}
#echo ${string[1]} # string is treated as index 0 so it shows ntg in index 1
#echo ${#string[@]}

############################################################
#while

#n=1
#while [ $n -le 10 ] #((<=))
#do
#	echo $n
#	n=$((n+1)) #((n++))
#done

#2

#n=1
#while [ $n -le 10 ] 
#do
#	echo $n
#	((n++))
#	sleep 1
#done

#3

#n=1
#while [ $n -le 3 ] 
#do
#	echo $n
#	((n++))
##	tilix
#	sleep 1
#done

#4

#while read p
#do
#	echo $p
#done < A

#5

#cat A | while read p
#do
#	echo $p
#done

#6
#while IFS=" " read -r line
#do
#	echo $line
#done <A

########################################

#until

#n=1
#until [ $n -ge 10 ]; #check for false condition
#do
#	echo $n
#	((n++))

#done

###############################

#For loop

#I

#for i in 1 2 3 4 5
#do 
#	echo $i
#done

#2

#for i in {1..10} #1 to 10
#do 
#	echo $i
#done

#3

#for i in {1..10..2} #1 to 10 by 2
#do 
#	echo $i
#done

#II 

#for (( i=0; i<5; i++ ))
#do 
#	echo $i
#done

#III print the dir or files

#for item in *
#do
#	if [ -d $item ] # -f for files
#	then
#		echo $item
#	fi
#done

############################
#select loop

#select name in mark john tom alo
#do
#	echo "$name selected"
#done

#A List is displayed, which asks us to select from it

#######################################

#functions
#Methods

#function name()
#{
#	commands
#}

#2

#name()
#{
#	commands
#}

#function hello()
#{
#	echo "Hello"
#}

#quit()
#{
#	exit
#}

#quit
#hello

#######################################

#Every Variable is global in shell
#for local we need to add local before the variable
#
#local name= mark

###################################

#function example
#usage()
#{
#	echo "You need to provide an argument: "
#	echo "usage : $0 file_name"
#}

#is_file_exist()
#{
#	local file="$1"
#	[ -f "$file" ] && return 0 || return 1
#}

#[[ $# -eq 0 ]] && usage

#if(is_file_exist "$1")
#then
#	echo "File found"
#else
#	echo "File Not found"
#fi

##########################

#readonly
#1
#var=31
#readonly var
#var=50
#echo "var => $var"

#2

#hello()
#{
#	echo "Hello World"
#}

#readonly -f hello


#hello()
#{
#	echo "Hello 1"
#}

#readonly

###################################

#Signal and Trap

#echo " pid is $$ "
#while (( COUNT <10 )); 
#do
#	sleep 10
#	(( COUNT ++ ))
#	echo $COUNT
	
#done


#trap

#trap "echo Exit command is detected " 0
#echo "Hello World"

#exit 0

#trap "echo Exit command is detected "0  #SIGKILL #SIGINT 
#echo " pid is $$ "
#while (( COUNT <10 )); 
#do
#	sleep 1
#	(( COUNT ++ ))
#	echo $COUNT
	
#done
#exit 0

#SIGKILL is exception

######################################

#to debug 
#use bash -x ./hello.sh

#use hashbang -x like #! /bin/bash -x

# use set -x in script
# use set +x where it debug until this point

echo "Created by Thaneesh"
echo "You can add its OPEN KNOWLEDGE SOURCE"