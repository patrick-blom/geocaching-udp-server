# geocaching-udp-server
small UDP ruby script that returns some geocaching coords if the right password will be passed by netcat

######usage server:
>./main.rb

######usage client:
>echo -n "password" | nc -4u -w1 localhost 1337
