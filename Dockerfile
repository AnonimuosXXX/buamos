# Indica la imagen base que utilizarás
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios al directorio de trabajo
COPY requirements.txt .
COPY sample_app.py .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 9999

# Define el comando que se ejecutará cuando se inicie el contenedor
CMD ["python", "sample_app.py"]
