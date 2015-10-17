# geocaching-udp-server
small UDP ruby script that returns some geocaching coords if the right password will be passed by netcat

## requirements
The Daemons plugin is requiered. Install it using
>sudo gem install daemons

##usage server:
Start the Server with
>./geoserver_control.rb start

Get the runnginstate with
>./geoserver_control.rb status

Stop the Server with
>./geoserver_control.rb stop


######usage client:
>echo -n "password" | nc -4u -w1 localhost 1337
