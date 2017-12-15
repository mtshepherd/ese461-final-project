<<<<<<< HEAD
src = In_Calculator.v Out_Calculator.v Activation.v ShiftRAM.v Top.v Top_tb.v
=======
src = In_Calculator.v In_Calculator_tb.v
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2

vcs_flag = -full64 -PP +lint=all,noVCDE +v2k -timescale=1ns/10ps

all: simv

simv: $(src)
	vcs $(vcs_flag) $^

run: simv
	./simv +verbose=1

.PHONY: clean
clean : 
	rm -rf csrc
	rm -f simv
	rm -rf simv.daidir
	rm -f *.vcd
	rm -f ucli.key
