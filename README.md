# CountWebpageWords

Here's a C++ program that uses std::map to count unique words on a web page. This program will prompt the user for a URL, fetch the content of the web page, and then output a list of words along with their counts, sorted in ascending order by the words.

To accomplish this, the program will:

1. Use the libcurl library to fetch the content from the URL.
2. Use std::map to count occurrences of each word.
3. Display the word counts in sorted order.

### To display the word counts in descending order by their count, we need to:

1. Extract the word-count pairs from the std::map.
1. Store them in a container that allows sorting by value (since std::map is sorted by keys).
1. Sort the container by the word count in descending order.
1. Display the sorted result.

## Try
- https://www.gutenberg.org/cache/epub/5200/pg5200-images.html
- 
## Explanation:
1. `WriteCallback` Function:
A callback function used by libcurl to write data to a string.
2. `fetchWebPage` Function:
Uses libcurl to fetch the content from a given URL.
3. `countWords` Function:
Processes the content, tokenizes it into words, and counts occurrences while ignoring punctuation and converting words to lowercase.
4. `displayWordCounts` Function:
Outputs the words and their counts in ascending order.
5. `main` Function:
Prompts the user for a URL, fetches the content, counts the words, and displays the results.

## Building on macOS
### Install Dependencies:
Install Homebrew (if not already installed) by following instructions on Homebrew's website.

### Install libcurl using Homebrew:
```
brew install curl
```
### Update Makefile for macOS:
Modify the Makefile to link against the correct libcurl library on macOS. Here’s an updated Makefile:
```
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
```
Compile and Build:
Open a terminal, navigate to the directory containing word_count.cpp and Makefile, and run:
```
./word_count
```

## Building on Windows
### Install libcurl:
Download pre-built libcurl binaries from the libcurl website or build from source.
Ensure you have the libcurl headers and libraries available.
Set Up Your Build Environment:

### Install a C++ Compiler:
Visual Studio: Install the Community edition from the Visual Studio website. It includes MSVC which is suitable for building C++ projects.
## MinGW: Install MinGW for GCC support on Windows.
Update Makefile for Windows:
Here’s an updated Makefile for Windows using MinGW (adjust paths to libcurl as needed):
```
# Makefile for word_count on Windows (MinGW)

CXX = g++
CXXFLAGS = -Wall -std=c++11
LIBS = -lcurl

# Target to compile and link the program
word_count: word_count.o
	$(CXX) $(CXXFLAGS) -o word_count.exe word_count.o $(LIBS)

# Compile the object file for word_count.cpp
word_count.o: word_count.cpp
	$(CXX) $(CXXFLAGS) -c word_count.cpp

# Clean up the compiled files
clean:
	del *.o word_count.exe
```
### Compile and Build:

#### Using MinGW:
Open Command Prompt or Git Bash, navigate to the directory containing word_count.cpp and Makefile, and run:
```
make
```
#### Using Visual Studio:
Open Visual Studio, create a new project, add word_count.cpp to the project, and configure the project to include libcurl headers and link against libcurl library.
Build the project using Visual Studio's build tools.
### Run the Program:
In Command Prompt or Git Bash, execute:
```
word_count.exe
```
## Summary
On macOS, you use brew to install dependencies and make to build your project.
On Windows, you can use MinGW for a Unix-like build environment or Visual Studio for a more integrated approach. Make sure to adjust paths and library links according to your setup.


Dependencies:
`libcurl`: You need to have the libcurl library installed to fetch the web page content. On Debian-based systems, you can install it using:
```
sudo apt-get install libcurl4-openssl-dev
```
On Red Hat-based systems:
```
sudo yum install libcurl-devel
```
