# Sử dụng một hình ảnh cơ sở Python có sẵn
FROM python:3.9

# Đặt thư mục làm thư mục làm việc
WORKDIR /code

# Sao chép tệp requirements.txt vào thư mục /code
COPY requirements.txt .

# Cài đặt các gói phụ thuộc từ tệp requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép mã nguồn ứng dụng vào thư mục /code
COPY . /code

# Chạy ứng dụng Flask khi container được khởi động
CMD ["python", "app.py"]