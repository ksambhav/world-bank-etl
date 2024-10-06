from setuptools import find_packages, setup

setup(
    name="wb_etl",
    packages=find_packages(exclude=["wb_etl_tests"]),
    install_requires=[
        "dagster",
        "dagster-cloud"
    ],
    extras_require={"dev": ["dagster-webserver", "pytest"]},
)
