import os
Import("env")

# Save pwd
oldpwd = os.getcwd()

os.chdir("lib/oxide")
print("building oxide")
if env.GetBuildType() == "debug":
    os.system("cargo build")
else:
    os.system("cargo build --release")
print("generating header for oxide")
os.system("cbindgen --config cbindgen.toml --output include/oxide.h")

# Restore pwd
os.chdir(oldpwd)