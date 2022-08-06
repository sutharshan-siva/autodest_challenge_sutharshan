from flask import Flask
from flask import request
from flask import jsonify
import sys
import logging
log = logging.getLogger('werkzeug')

app = Flask(__name__)
@app.route('/', methods=['GET', 'POST'])
def hello():
    content_type = request.headers.get('Content-Type')
    if (content_type == 'application/json'):
        return jsonify({'message' : 'Hello, World!'})
    else:
        return "<p>Hello, World</p>"


if __name__ == "__main__":
    if len(sys.argv) <= 1: 
        print("No arguments given")
        log.setLevel(logging.ERROR)
        app.run(host="0.0.0.0", port=8090)
    else: 
        debug_status = sys.argv[1] 
        if debug_status == "debug":
            log.setLevel(logging.DEBUG)
            app.run(host="0.0.0.0", port=8090)
        else:
            print("passing arugment is incorrect,  only debug option is supported")
            exit()
