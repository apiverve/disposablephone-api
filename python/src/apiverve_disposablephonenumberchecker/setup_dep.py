from setuptools import setup, find_packages

setup(
    name='apiverve_disposablephonenumberchecker',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Disposable Phone Number Checker flags temporary and burner phone numbers supplied in E.164 format. Pass any number to check whether it is disposable and view the date it was first seen on temporary SMS lists.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/disposablephone?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
