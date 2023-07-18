# 指定基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 文件到容器中
COPY requirements.txt .

# 安装依赖项
RUN pip install --no-cache-dir -r requirements.txt

# 复制 Python 文件到容器中
COPY app.py .

# 设置容器启动命令
CMD ["python", "app.py"]
