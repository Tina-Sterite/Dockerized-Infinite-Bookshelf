FROM python:3.11.9

WORKDIR /app

ADD main.py .

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8501

#CMD ["python", "./main.py"]
CMD ["streamlit", "run", "main.py"]
#CMD ["streamlit", "run", "main.py", "--server.address=0:0:0:0", "--server.port=8501"]

#RUN:
    #docker build -t infinite-bookshelf .  
    #docker run -t -i infinite-bookshelf
    #or the next 4
    #docker run -it infinite-bookshelf /bin/bash
    #pip install -r requirements.txt
    #pip list to check package installation
    #streamlit run main.py
    # or try
    #docker run -p 8501:8501 infinite-bookshelf