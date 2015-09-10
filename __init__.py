from flask import Flask, render_template, flash
from flask_bootstrap import Bootstrap
from flask_appconfig import AppConfig

def create_app(configfile=None):
    app  = Flask(__name__)
    AppConfig(app, configfile)
    Bootstrap(app)

    @app.route('/')
    def index():
        return render_template('index.html')

    return app

if __name__ == '__main__':
    create_app().run(host='0.0.0.0', port = 1000, debug = True)
