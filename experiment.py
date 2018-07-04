import subprocess

s = subprocess.check_output(["ILASP", "--version=2i", "las_base.las"], universal_newlines=True)
print("RESULT: ", s)
