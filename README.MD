port numbers:
-------------
* app_alb is running on port number 80
* web_alb is running on port number 443
* mysql is running on port number 3306
* mongodb is running on port number 27017
* redis is running on port number 6379
* rabbitmq is running on port number 5672
* catalogue , user , cart , shipping , payment is running on port number 8080

connections:
------------

* vpn , web , cart , shipping , user , catalogue , payment  should accept connections from app_alb
 on port number 80
* web_alb should accept connections from internet on port number 443
* home should accept connections from vpn
* mongodb , redis , mysql , rabbitmq should accept connections from vpn on port number 22
* mongodb should accept connections from catalogue & user on port number 27017
* redis should accept connections from user & cart on port number 6379
* mysql should accept connections from shipping on port number 3306
* rabbitmq should accept connections from payment on port number 5672
* catalogue should accept connections from vpn or http on port number 8080
* catalogue , user ,cart , shipping , payment should accept connections from app_alb on port number 8080
* cart should accept connections from shipping & payment on port number 8080
* web should accept connections from internet

note:
-----

* In this terraform project ansible hosts of catalogue , shipping , payment , cart are running on port number 80 because there will be no direct connection between each and everyone. they can only communicate through app_alb according to architecture diagram

