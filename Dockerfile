FROM python:3.8-slim

#working directory

WORKDIR app/

#copy the req.txt file
COPY req.txt
RUN pip install -r req.txt

#copy the app code
COPY . .

#port number
EXPOSE 5000

#Run the app
CMD ["python","app.py"]
