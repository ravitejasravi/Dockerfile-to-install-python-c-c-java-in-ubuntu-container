FROM debian

RUN apt-get update -y

RUN apt-get install python3 -y

RUN apt-get install g++ -y

RUN apt-get install default-jdk -y

RUN apt-get update -y

COPY . .

RUN touch out.txt

RUN g++ helloc.cpp

RUN ./a.out >> out.txt
RUN python3 hellop.py >> out.txt

RUN javac helloj.java
RUN java helloj >> out.txt

CMD cat out.txt


