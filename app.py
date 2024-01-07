from flask import Flask
from redis import Redis

app = Flask(__name__)
redis = Redis(host='localhost', port=6379)

@app.route('/')
def index():
    redis.incr('hits')
    counter = redis.get('hits').decode('utf-8')
    return f"Số lần truy cập: {counter}"

if __name__ == '__main__':
    app.run(debug=True)