PIC_LD=ld

ARCHIVE_OBJS=
<<<<<<< HEAD
ARCHIVE_OBJS += _31871_archive_1.so
_31871_archive_1.so : archive.0/_31871_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -o .//../simv.daidir//_31871_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_31871_archive_1.so $@
=======
ARCHIVE_OBJS += _22796_archive_1.so
_22796_archive_1.so : archive.25/_22796_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -o .//../simv.daidir//_22796_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_22796_archive_1.so $@
>>>>>>> 4f1986a410fb816d082d330e73c5dd21beb325f2



VCS_ARC0 =_csrc0.so

VCS_OBJS0 =amcQwB.o 



%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<


$(VCS_ARC0) : $(VCS_OBJS0)
	$(PIC_LD) -shared  -o .//../simv.daidir//$(VCS_ARC0) $(VCS_OBJS0)
	rm -f $(VCS_ARC0)
	@ln -sf .//../simv.daidir//$(VCS_ARC0) $(VCS_ARC0)

CU_UDP_OBJS = \


CU_LVL_OBJS = \
SIM_l.o 

CU_OBJS = $(ARCHIVE_OBJS) $(VCS_ARC0) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

