inputbox message,Input Morse Message,Please input your morse message:`n(Leave the box blank to exit)
if (message = null) {
	ExitApp
} else {
	msgbox Ready to send: %message% . Press CTRL + Q when ready!`n(You can close this box)
}

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

sendMorse(msg){
	morseAlphabet := {"a": ".-", "b": "-...", "c": "-.-.", "d": "-..", "e": ".", "f": "..-.", "g": "--.", "h": "....", "i": "..", "j": ".---", "k": "-.-", "l": ".-..", "m": "--", "n": "-.", "o": "---", "p": ".--.", "q": "--.-", "r": ".-.", "s": "...", "t": "-", "u": "..-", "v": "...-", "w": ".--", "x": "-..-", "y": "-.--", "z": "--..", "1": ".----", "2": "..---", "3": "...--", "4": "....-", "5": ".....", "6": "-....", "7": "--...", "8": "---..", "9": "----.", "0": "-----", ".": ".-.-.-", ",": "--..--", "!": "---.", "?": "..--..", ":": "---...", "'": ".----.", "-": "-....-", "/": "-..-.", chr(34): ".-..-.", "@": ".--.-.", "=": "-...-", " ": " "}
	dwellBetweenCharacters := 147
	msgArray := StrSplit(msg)
	Loop % msgArray.MaxIndex(){
		toSend := StrSplit(morseAlphabet[msgArray[A_Index]])
		Loop % toSend.MaxIndex(){
			if (toSend[A_Index] = ".") {
				sendShort()
			} else if (toSend[A_Index] = "-") {
				sendLong()
			} else if (toSend[A_Index] = " ") {
				sleep 300
			}
		}
		sleep %dwellBetweenLetters%
	}
}

^x::ExitApp

^z::
	sendMorse(message)
return