FROM python:3.8-slim

WORKDIR /app

COPY random_forest_model.pkl .

RUN pip install scikit-learn flask gunicorn

COPY serve.py .

CMD ["gunicorn", "-w 4", "serve:app"]
