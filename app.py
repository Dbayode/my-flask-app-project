from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello, Docker!</h1><p>Flask application is successfully running inside a container.</p>"

if __name__ == "__main__":
    # Host must be set to 0.0.0.0 to listen on all container interfaces
    app.run(host="0.0.0.0", port=5000)
