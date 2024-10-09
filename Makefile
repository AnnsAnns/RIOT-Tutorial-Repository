# name of your application
APPLICATION = hello-world

# If no BOARD is found in the environment, use this default:
BOARD ?= native

# Build in Docker by default (set to 0 to build locally)
BUILD_IN_DOCKER ?= 1

# This has to be the absolute path to the RIOT base directory:
RIOTBASE ?= $(CURDIR)/RIOT

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

# Tell the build system to use the Rust crate here
FEATURES_REQUIRED += rust_target
APPLICATION_RUST_MODULE = hello_world # Make sure this matches the name of the Rust crate
BASELIBS += $(APPLICATION_RUST_MODULE).module

include $(RIOTBASE)/Makefile.include
