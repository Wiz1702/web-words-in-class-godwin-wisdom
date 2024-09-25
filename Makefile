# Makefile for word_count on macOS

CXX = g++
CXXFLAGS = -Wall -std=c++11
LIBS = -lcurl

# Target to compile and link the program
word_count: word_count.o
	$(CXX) $(CXXFLAGS) -o word_count word_count.o $(LIBS)

# Compile the object file for word_count.cpp
word_count.o: word_count.cpp
	$(CXX) $(CXXFLAGS) -c word_count.cpp

# Clean up the compiled files
clean:
	rm -f *.o word_count
