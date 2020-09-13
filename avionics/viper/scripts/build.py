import os
import glob

Import("env")

print("building oxide")

if "RUSTFLAGS" not in env.get("ENV"):
	env.get("ENV")["RUSTFLAGS"] = ""

env.get("ENV")["RUSTFLAGS"] += "--emit obj -C soft-float=no -C default-linker-libraries=no"

if (env.Execute("cargo build --release") != 0):
    exit(1)

env.Append(PIOBUILDFILES=["$PROJECT_DIR/" + max(glob.glob("target/thumbv7em-none-eabihf/release/deps/viper_oxide-*.o"), key=os.path.getctime)])