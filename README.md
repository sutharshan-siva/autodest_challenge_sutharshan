#####################
#README Instructions#
#####################

Prerequisite: 

Any linux instance with internet connection or AWS Cloud9 instance with internet connection.   
Make sure python3 is installed.  


#############
#Setup Guide#
#############

1> log into the instance 

2>  Clone the project 

git clone https://github.com/sutharshan-siva/autodest_challenge_sutharshan.git

3> Create  virtualenv with Python3

virtualenv -p python3 venv1

source venv1/bin/activate

4> Install the library 

pip install flask


5> Run the python code.

python python_api_code.py


#Sample curl commands to test this code in another terminal tab.

curl -H "Content-Type: application/xml" -X GET http://127.0.0.1:8080/

curl -H "Content-Type: application/json" -X GET http://127.0.0.1:8080/

curl -H "Content-Type: application/json" -X POST http://127.0.0.1:8080/

curl -X POST http://127.0.0.1:8080/

6> To run the code with debug logging level, execute below command.  

python python_api_code.py debug


#Sample curl commands to test this code in another terminal tab.

curl -H "Content-Type: application/xml" -X GET http://127.0.0.1:8080/

curl -H "Content-Type: application/json" -X GET http://127.0.0.1:8080/

curl -H "Content-Type: application/json" -X POST http://127.0.0.1:8080/

curl -X POST http://127.0.0.1:8080/


7> Script to test api endpoint. 

chmod +x unit_test.sh
sh unit_test.sh






