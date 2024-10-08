NAME = webserv

SRC =	./Request/Buffer/RequestBuffer.cpp\
		./Parsing/src/Tokenizer.cpp\
		./Uploader/src/Upload.cpp \
		./Request/Buffer/Byte.cpp\
		./main.cpp\
		./HttpElement/src/Client.cpp\
		./HttpElement/src/Global.cpp\
		./HttpElement/src/Server.cpp\
		./HttpElement/src/ServerFd.cpp\
		./Parsing/src/GenerateGlobalClass.cpp\
		./Parsing/src/GenerateServer.cpp\
		./Utils/src/UrlEncoder.cpp\
		./ErrorResponse/src/ErrorResponse.cpp\
		./ErrorResponse/src/GenerateError.cpp\
		./Response/src/Response.cpp\
		./Response/src/GenerateResponse.cpp\
		./Response/src/AllMethod.cpp\
		./HttpElement/src/Location.cpp\
		./Parsing/src/GenerateLocation.cpp\
		./Utils/src/trim.cpp\
		./Utils/src/DirListing.cpp\
		./Parsing/src/ParsRequest.cpp\
		./HttpElement/src/Request.cpp\
		./HttpElement/src/Cgi.cpp\
		./Utils/src/signal.cpp\




HEADER =	./HttpElement/include/Client.hpp \
			./HttpElement/include/Global.hpp \
			./Response/include/Response.hpp\
			./HttpElement/include/Server.hpp \
			./Parsing/include/GenerateGlobalClass.hpp \
			./ErrorResponse/include/ErrorResponse.hpp\
			./ErrorResponse/include/GenerateError.hpp\
			./Parsing/include/GenerateServer.hpp \
			./include/includes.hpp \
			./Response/include/GenerateResponse.hpp\
			./Response/include/AllMethod.hpp\
			./HttpElement/include/Location.hpp \
			./Parsing/include/GenerateLocation.hpp \
			./Parsing/include/Tokenizer.hpp \
			./Utils/include/DirListing.hpp\
			./Parsing/include/ParsRequest.hpp\
			./Request/Buffer/RequestBuffer.hpp\
			./HttpElement/include/Request.hpp\
			./HttpElement/include/Cgi.hpp\
			./Request/Buffer/Byte.hpp\
			./Uploader/include/Upload.hpp \


OBJ = $(SRC:.cpp=.o)

CONFIG = ./config/default.conf

FLAGS = #-Wall -Wextra -Werror #-std=c++98 -g


all:$(NAME)

$(NAME): $(OBJ) $(HEADER)
		c++ $(FLAGS) $(OBJ) -o $(NAME)

%.o: %.cpp $(HEADER)
			c++ $(FLAGS) -c $< -o $@ -DCONFIG_PATH=\"$(CONFIG)\"

clean c:
			rm -rf $(OBJ)

fclean f: clean
			rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
