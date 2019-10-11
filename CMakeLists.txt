cmake_minimum_required(VERSION 3.0)
project(shatest C)

add_executable(${PROJECT_NAME}
        usha.c sha1.c sha224-256.c sha384-512.c
        hmac.c hkdf.c shatest.c
        )
