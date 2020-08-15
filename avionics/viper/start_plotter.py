import os
import signal
Import("env")

def before_upload(source, target, env):
    try:
        pid = open("~/.cache/arduino-plotter.pid", "r").read()
        os.kill(pid, signal.SIGTERM)
    except:
        print("Plotter was not running")


def after_upload(source, target, env):
    pid = os.system("arduino-plotter > /dev/null & echo &! > ~/.cache/arduino-plotter.pid")

env.AddPreAction("upload", before_upload)
env.AddPostAction("upload", after_upload)