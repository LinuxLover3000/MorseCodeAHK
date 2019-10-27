inputbox message,Input Morse Message,Please input your morse message:


dwell:=147
sendLong(){
	sleep 25
	send {. down}
	sleep 178
	send {. up}
}

sendShort(){
	sleep 25
	send {. down}
	sleep 25
	send {. up}
}



^x::ExitApp

^z::
	sendShort()
	sendShort()
	sendShort()
	sendShort()
	sleep %dwell%
	sendShort()
	sleep %dwell%
	sendShort()
	sendLong()
	sendShort()
	sendShort()
	sleep %dwell%
	sendShort()
	sendLong()
	sendShort()
	sendShort()
	sleep %dwell%
	sendLong()
	sendLong()
	sendLong()
	;send %message%
return


/*
a::

send .
send {. down}
sleep 300
send {. up}

sleep 300

return

b::

send {. down}
sleep 300
send {. up}
send ...

sleep 300

return

c::

send {. down}
sleep 300
send {. up}
send .
send {. down}
sleep 300
send {. up}
send .

sleep 300

return

d::

send {. down}
sleep 300
send {. up}
send ..

sleep 300

return

e::

send .

sleep 300

return

f::

send ..
send {. down}
sleep 300
send {. up}
send .

sleep 300

return

g::

send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}
send .

sleep 300

return

h::

send ....

sleep 300

return

i::

send ..

sleep 300

return

j::

send .
send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}

sleep 300

return

k::

send {. down}
sleep 300
send {. up}
send .
send {. down}
sleep 300
send {. up}

sleep 300

return

l::

send .
send {. down}
sleep 300
send {. up}
send ..

sleep 300

return

m::

send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}

sleep 300

return

n::

send {. down}
sleep 300
send {. up}
send .

sleep 300

return

o::

send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}

sleep 300

return

p::

send .
send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}
send .

sleep 300

return

q::

send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}
send .
send {. down}
sleep 300
send {. up}

sleep 300

return

r::

send .
send {. down}
sleep 300
send {. up}
send .

sleep 300

return

s::

send ...

sleep 300

return

t::

send {. down}
sleep 300
send {. up}

sleep 300

return

u::

send ..
send {. down}
sleep 300
send {. up}

sleep 300

return

v::

send ...
send {. down}
sleep 300
send {. up}

sleep 300

return

w::

send .
send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}

sleep 300

return

x::

send {. down}
sleep 300
send {. up}
send ..
send {. down}
sleep 300
send {. up}

sleep 300

return

y::

send {. down}
sleep 300
send {. up}
send .
send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}

sleep 300

return

z::

send {. down}
sleep 300
send {. up}
send {. down}
sleep 300
send {. up}
send ..

sleep 300

return

*/