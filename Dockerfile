# Projeto 5 - Projeto de Otimização e Escalabilidade Para Pipeline de CI/CD com Kubernetes

# Imagem base
FROM python:3.12-slim

# Pasta de trabalho
WORKDIR /app

# Copia o arquivo para a imagem
COPY requirements.txt .

# Executa a instalação das dependências
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copia os demais arquivos para o container
COPY . .

# Exposição da porta do Streamlit
EXPOSE 8501

# Executa o Streamlit
CMD ["streamlit", "run", "appdsa.py", "--server.port=8501", "--server.address=0.0.0.0"]
