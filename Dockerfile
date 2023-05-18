# Imagen base
FROM python:3.9

# Directorio de trabajo
WORKDIR /app

# Copia los archivos de la aplicación al contenedor
COPY . .

# Instala las dependencias
RUN pip install -r requirements.txt

# Configura el puerto de la aplicación
EXPOSE 9999

# Comando para ejecutar la aplicación
CMD ["python", "sample_app.py"]
