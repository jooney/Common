TARGET =  libZQCommon.so
LDFLAGS = -fPIC -shared -lpthread -lrt #-lhttp_parser
INCLUDE = .   # include 
CFLAGS = -g 

%.o:%.cpp
	$(CXX) -I$(INCLUDE) -c -g $<  # -std=c++11


SOURCES = $(wildcard *.cpp)
OBJS =  Log.o NativeThread.o NativeThreadPool.o Exception.o TimeUtil.o strHelper.o Pointer.o Semaphore.o FileLog.o     #$(patsubst %.cpp,%.o,$(SOURCES))
$(TARGET):$(OBJS)
	$(CXX) $(OBJS)  -g -o $(TARGET) $(LDFLAGS)



clean:
	-rm libZQCommon.so
	-rm *.o
