# Pythonの公式イメージをベースにする
FROM python:3.8

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY ./app .

# Streamlitのポートを公開
EXPOSE 8501

# Streamlitアプリケーションを実行
CMD ["streamlit", "run", "main.py"]
