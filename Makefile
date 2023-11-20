shell: main.o taskD.o taskB.o taskA.o taskC.o
	g++ -std=c++14 -w main.o taskD.o taskB.o taskA.o taskC.o -o shell

main.o: main.cpp
	g++ -std=c++14 -w -c main.cpp

taskD.o: taskD.cpp taskD.h
	g++ -std=c++14 -w -c taskD.cpp

taskB.o: taskB.cpp taskB.h
	g++ -std=c++14 -w -c taskB.cpp

taskA.o: taskA.cpp taskA.h
	g++ -std=c++14 -w -c taskA.cpp

taskC.o: taskC.cpp taskC.h
	g++ -std=c++14 -w -c taskC.cpp

clean:
	rm -rf *.o shell