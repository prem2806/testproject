FROM python:3 as builder
CMD [ "python", "./test.py" ]
RUN apt-get install -y python
WORKDIR /home
ADD test.py /home/test.py

#Multi Docker image

FROM python:3.8-alpine
RUN mkdir /code/
WORKDIR /code/
COPY --from=builder /home/test.py /code/test.py
CMD ["/code/test.py"]
ENTRYPOINT ["python"]
