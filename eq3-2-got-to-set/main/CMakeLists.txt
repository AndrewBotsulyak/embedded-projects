idf_component_register(SRCS "main.cpp"
                            "stepper/stepper.cpp"
                            "tmc-module-uart/tmc-uart.c"
                            "tmc-module-uart/tmc-power.c"
                    INCLUDE_DIRS "." "stepper" "tmc-module-uart")
