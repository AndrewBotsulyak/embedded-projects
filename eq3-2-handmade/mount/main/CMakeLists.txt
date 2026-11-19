idf_component_register(SRCS "main.cpp"
                            "tmc-driver/tmc-uart.cpp"
                            "tmc-driver/tmc-driver.cpp"
                            "tmc-driver/tmc-error.cpp"
                            "stepper/stepper.cpp"
                            "stepper/motion.cpp"
                            "utils/tmc-err-codes.cpp"
                            "lx200/lx200.cpp"
                            "lx200/lx200_usb.cpp"
                            "lx200/lx200_espnow.cpp"
                            "mount/mount.cpp"
                            "astro/astro.cpp"
                    INCLUDE_DIRS "." "tmc-driver" "stepper" "utils" "lx200" "mount" "astro")

target_compile_options(${COMPONENT_LIB} PRIVATE -save-temps=obj -fverbose-asm)
