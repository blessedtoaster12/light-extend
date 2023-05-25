FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN light_extend create-db
RUN light_extend populate-db
RUN light_extend add-user -u admin -p admin
EXPOSE 5000
CMD ["light_extend", "run"]
