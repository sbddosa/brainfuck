HEADERDIR = inc
SRCDIR = src
OBJDIR = obj

OBJS = $(OBJDIR)/main.o $(OBJDIR)/interpreter.o $(OBJDIR)/tape.o $(OBJDIR)/cell.o

all: brainfuck

brainfuck: $(OBJS)
	g++ $(OBJS) -o $@

$(OBJDIR)/%.o: $(SRCDIR)/%.cc
	g++ -c -I$(HEADERDIR) $< -o $@

clean:
	rm -f $(OBJDIR)/*
