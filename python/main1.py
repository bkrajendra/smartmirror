#!/usr/bin/env python

from flask import Flask, render_template, redirect, request, current_app, jsonify
app = Flask(__name__)
import math
import random
from functools import wraps
import json

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

@app.route("/dht")
def api_dht():
    h = random.randint(75, 80)
    t = random.randint(26, 31)
    dp = '{0:.2f}'.format(get_dew_point_c(t,h)) 
    humidity, temperature, dew = h, t, dp

    if humidity is not None and temperature is not None:
        obj =  { 'temperature': temperature, 'humidity': humidity, 'dew': dew}
        return jsonify(data=obj)
    else:
        return "Failed to get reading. Try again!", 500

@app.route("/power")
def api_power():
    b = random.randint(75, 80)
    k = random.randint(26, 31)
    h = random.randint(26, 31) 

    if b is not None and k is not None:
        obj =  { 'bed': b, 'kitchen': h, 'hall': k}
        return jsonify(data=obj)
    else:
        return "Failed to get reading. Try again!", 500

def raw_dht():
    return read_retry(sensor, pin)

if __name__ == "__main__":
    app.run(host = "0.0.0.0", debug = True, port = 54321)