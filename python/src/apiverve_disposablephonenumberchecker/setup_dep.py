from setuptools import setup, find_packages

setup(
    name='apiverve_disposablephonenumberchecker',
    version='1.2.4',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Disposable Phone Number Checker is a phone fraud API that flags temporary, burner and virtual phone numbers published on SMS-receiving sites. Pass a number in E.164 format to check whether it is disposable and see the date it was first seen on those lists.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/disposablephone?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
