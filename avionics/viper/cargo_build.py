import glob
import os

# PlatformIO specific
Import("env")

# def ignore_main_cpp(node):
print("Building viper")

if "RUSTFLAGS" not in env.get("ENV"):
	env.get("ENV")["RUSTFLAGS"] = ""

env.get("ENV")["RUSTFLAGS"] += "--emit obj -C soft-float=no -C default-linker-libraries=no"
result = env.Execute("cargo build --release")

if result != 0:
	raise Exception("Failed to compile")

env.Append(PIOBUILDFILES=["$PROJECT_DIR/" + latest_file = max(glob.glob("target/thumbv7em-none-eabihf/release/deps/firmware-*.o"), key=os.path.getctime))