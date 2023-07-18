# 指定基础镜像
FROM python:3.9



# 复制 requirements.txt 文件到容器中
COPY requirements.txt /app/requirements.txt
COPY app.py /app/app.py
COPY .streamlit/secrets.toml /app/.streamlit/secrets.toml

# 安装依赖项
RUN pip install --no-cache-dir -r /app/requirements.txt

# 设置工作目录
WORKDIR /app

# 设置容器启动命令
CMD ["streamlit", "run", "app.py"]
