FROM thejmthon/jmbot:slim-buster

RUN git clone https://github.com/picthon/picthon.git /root/jmub

WORKDIR /root/jmub

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jmbot/bin:$PATH"

CMD ["python3","-m","picthon"]