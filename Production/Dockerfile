FROM python:3 as product
CMD [ "python", "./test.py" ]
RUN apt-get install -y python
WORKDIR /home
ADD prod.py /home/prod.py

#Multi Docker image

FROM python:3.8-alpine
RUN mkdir /code/
WORKDIR /code/
COPY --from=product /home/prod.py /code/prod.py
CMD ["/code/prod.py"]
ENTRYPOINT ["python"]
