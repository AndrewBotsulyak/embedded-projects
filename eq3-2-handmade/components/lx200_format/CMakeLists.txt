# Общий компонент для монтировки и пульта: перевод координат LX200 «строка ↔ число».
# Ни от чего не зависит (ни FreeRTOS, ни драйверов) — проверяется на компьютере,
# см. host_test/test_lx200_format.cpp
idf_component_register(SRCS "lx200_format.cpp"
                       INCLUDE_DIRS "include")
