#!/usr/bin/env python

from flask import Flask, render_template, redirect, request, current_app
app = Flask(__name__)
import math

from functools import wraps
import json

from Adafruit_DHT import DHT11, read_retry
sensor = DHT11
pin = 24


def get_frost_point_c(t_air_c, dew_point_c):
    """Compute the frost point in degrees Celsius
    :param t_air_c: current ambient temperature in degrees Celsius
    :type t_air_c: float
    :param dew_point_c: current dew point in degrees Celsius
    :type dew_point_c: float
    :return: the frost point in degrees Celsius
    :rtype: float
    """
    dew_point_k = 273.15 + dew_point_c
    t_air_k = 273.15 + t_air_c
    frost_point_k = dew_point_k - t_air_k + 2671.02 / ((2954.61 / t_air_k) + 2.193665 * math.log(t_air_k) - 13.3448)
    return frost_point_k - 273.15


def get_dew_point_c(t_air_c, rel_humidity):
    """Compute the dew point in degrees Celsius
    :param t_air_c: current ambient temperature in degrees Celsius
    :type t_air_c: float
    :param rel_humidity: relative humidity in %
    :type rel_humidity: float
    :return: the dew point in degrees Celsius
    :rtype: float
    """
    A = 17.27
    B = 237.7
    alpha = ((A * t_air_c) / (B + t_air_c)) + math.log(rel_humidity/100.0)
    return (B * alpha) / (A - alpha)

def support_jsonp(f):
    """Wraps JSONified output for JSONP"""
    @wraps(f)
    def decorated_function(*args, **kwargs):
        callback = request.args.get("callback", False)
        if callback:
            content = str(callback) + "(" + str(f(*args,**kwargs)) + ")"
            return current_app.response_class(content, mimetype="application/javascript")
        else:
            return f(*args, **kwargs)
    return decorated_function

@app.route("/dht")
@support_jsonp
def api_dht():
    humidity, temperature = raw_dht()
    if humidity is not None and temperature is not None:
        return "{ temperature: '" + "{0:0.0f}".format(temperature) +  "', humidity: '" + "{0:0.0f}".format(humidity) + "' }"
    else:
        return "Failed to get reading. Try again!", 500


def raw_dht():
    return read_retry(sensor, pin)

if __name__ == "__main__":
    app.run(host = "0.0.0.0", debug = True, port = 54321)