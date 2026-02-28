FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .

# install packages
RUN pip install --no-cache-dir -r requirements.txt

# port for Jupyter
EXPOSE 8888

# run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]