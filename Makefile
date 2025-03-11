# Compiler
CXX = g++
CXXFLAGS = -Wall -O2 -std=c++17

# Target executable
TARGET = mergesort

# Source files
SRCS = mergesort.cpp

# Default rule: build the executable
all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

# Clean rule: removes compiled files
clean:
	rm -f $(TARGET)
