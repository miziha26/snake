
TARGET := a.out 
GCC := arm-linux-g++

${TARGET}: main.o point.o color.o  rect.o screen.o  bmp.o map.o shape.o circle.o food.o  snake.o  game.o  touchevent.o leaderboard.o font.o
	${GCC} $^ -o  $@   -pthread
	cp ${TARGET}   ~/tftpboot	
%.o: %.cpp
	${GCC} $^  -c  -std=c++11


clean:
	rm *.o  -f 
	rm ${TARGET} -f 


			


