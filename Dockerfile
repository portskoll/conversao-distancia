FROM python
WORKDIR /app
COPY requirements.txt /app/
RUN python -m pip install -r requirements.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
