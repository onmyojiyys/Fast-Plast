CC := g++
CPPFLAGS := -std=c++11 -g -pthread
TARGET := afin
OBJS := afin.o contig.o print_time.o process.o read.o revcomp.o afin_util.o mismatch.o

$(TARGET): $(OBJS)
	$(CC) $(CPPFLAGS) -o $@ $(OBJS)

test: $(OBJS)
	$(CC) $(CPPFLAGS) -o $@ $(OBJS)

%.o : %.cpp
	$(CC) $(CPPFLAGS) -c $< -o $@ 

clean:
	/bin/rm -f *o $(TARGET)

