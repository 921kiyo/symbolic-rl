from subprocess import call, run
import subprocess

def call_ilasp(filename):

    # call(["ILASP", "--version=2i", filename, "-ml=5"])
    result = run(["ILASP", "--version=2i", filename, "-ml=5"], stdout=subprocess.PIPE)
    # result = run(["ls", "-l"], stdout=subprocess.PIPE)
    print("result: ", result.stdout.decode("utf-8"))
