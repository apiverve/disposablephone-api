from setuptools import setup, find_packages

setup(
    name='apiverve_disposablephonenumberchecker',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Disposable Phone Number Checker is an API that checks whether a given phone number is a known disposable or temporary number. Useful for fraud prevention, user verification, and security.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/disposablephone?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
