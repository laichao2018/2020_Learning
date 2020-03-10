# li  $t1, 1
# add $t0,$t1,2	# $t0 = $t1 + 2

#====== print integer ======
# $v0 = 1, syscall -> print_int
# $v0 = 4, syscall -> print_string
# move $a0, $t0	# a0 = t0
# li $v0, 1	# $v0 = 1, syscall -> print_int
# syscall 

#====== print string ======
.data	# data region, global var
# char* msg = "Hello World"
msg:  .ascii  "Hello World"

.text 	# 
li  $v0, 4	# $v0 = 4, syscall -> print_string
la $a0, msg	# put msg's address on a0, so it will printed by syscall
syscall

