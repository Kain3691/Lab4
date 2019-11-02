# Specify extensions of files to delete when cleaning
CLEANEXTS   = o a

# Specify the target file and the install directory
OUTPUTFILE  = library.a
INSTALLDIR  = ../Lab4test
EXEFILE = executable.exe
# Default target
.PHONY: all
all: $(OUTPUTFILE) $(EXEFILE)

# Build libjohnpaul.a from john.o, paul.o, and johnpaul.o
$(OUTPUTFILE): calculator.o
	ar ru $@ $^
	ranlib $@
$(EXEFILE): calculator.o
	gcc -o $(EXEFILE) calculator.o 
# No rule to build john.o, paul.o, and johnpaul.o from .cpp 
# files is required; this is handled by make's database of
# implicit rules

.PHONY: install
install:
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

.PHONY: clean 
clean:
	for file in $(CLEANEXTS); do rm -f *.$$file; done

# Indicate dependencies of .ccp files on .hpp files
calculator.o: calculator.cpp
hello.o: hello.cpp
factorial.o: factorial.cpp
