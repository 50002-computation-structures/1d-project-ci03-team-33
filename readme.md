Keep Talking and Nobody's FPGA Explodes

Keep Talking and Nobody’s FPGA Explodes is a high-stakes, real-world electronics puzzle game inspired by Keep Talking and Nobody Explodes created by Steel Crate Games. The twist is, rather than a virtual online game, this is a physical mockup! In this high intensity short duration multi-player game, where one player acts as the Technician, who is hands-on with a real FPGA setup, facing a series of cryptic errors, and potential “disasters” that must be resolved before time runs out, and the accompanying players, the Expert, who will have access to a complex but incomplete documentation manual. Only the Expert has access to the manual and only the Technician has access to the FPGA. This is a game where communication is key. The players must work together to decode the error messages, reconfigure logic circuits and prevent the bomb from exploding within 3 minutes. 

There are three modules

1. Red big button
2. Wire sequence
3. button sequence

Game timer: io_led[2]

start game : io_dip[0][1]

Rbb : io_button[0]
Wire sequence button : io_button[1]
button sequence : io_button[3]

io_led[0][0] = led on rbb
io_led[0][1] = led on wire 
io_led[0][7] = led on button
io_led[0][6] = win or lose indicatore

When modules are completed , the leds light up and timer stops







