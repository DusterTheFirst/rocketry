# PlatformIO specific
Import("env")

# def ignore_main_cpp(node):
print("Building viper")

result = env.Execute("cargo build --release")

if result != 0:
	raise Exception("Failed to compile")

# env.Append(PIOBUILDFILES=["$PROJECT_DIR/target/thumbv7em-none-eabihf/release/deps/firmware-platformio.o"])