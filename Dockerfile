# We're using Ubuntu 20.10
FROM xnewbie/docker:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b x-sql-extended https://github.com/bagasaelah/XBotWebs /root/userbot
RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/bagasaelah/XBotWebs/x-sql-extended/requirements.txt

CMD ["python3","-m","userbot"]
