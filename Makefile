TARGET = rri

OBJECT = RRI_Mod.o RRI_Mod2.o RRI_Mod_Dam.o RRI_Mod_Tecout.o RRI.o RRI_Bound.o RRI_Dam.o RRI_Div.o RRI_DT_Check.o RRI_Evp.o RRI_GW.o RRI_Infilt.o RRI_Read.o RRI_Riv.o RRI_RivSlo.o RRI_Section.o RRI_Slope.o RRI_Sub.o RRI_Tecout.o RRI_TSAS.o

F90 = gfortran
#F90 = ifort

FFLAGS = -O -fopenmp
INCLDIR = .
#INCLDIR = 
.SUFFIXES : .o .f90
.f90.o:
	${F90} ${FFLAGS} -c $< -I${INCLDIR}
${TARGET}: ${OBJECT}
	${F90} -o $@ ${OBJECT} ${FFLAGS}
