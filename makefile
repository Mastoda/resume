PAPER=main.tex 	 # set the path to your TeX file here
SHELL=/bin/bash  # for the while loop below

all:  ## Compile paper
    rubber --pdf $(PAPER)

clean:  ## Clean output files
    rubber --clean $(PAPER)

watch:  ## Recompile on updates to the source file
    @while true; do; inotifywait $(PAPER); sleep 0.01; make all; done

