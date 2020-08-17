import os
Import("env")

# Save pwd
oldpwd = os.getcwd()

os.chdir("lib/oxide")
print("building oxide")
if env.GetBuildType() == "debug":
    if (os.system("cargo build") >> 8) :
        exit(1)
else:
    if (os.system("cargo build --release") >> 8):
        exit(1)
print("generating header for oxide")
os.system("cbindgen --config cbindgen.toml --output include/oxide.h")

# Restore pwd
os.chdir(oldpwd)