from setuptools import setup, find_packages

setup(
    name='apiverve_randomword',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Random Word is a random word generator API that selects a random English word from the dictionary on each request. Paid plans add dictionary definitions and ARPABET phonetic pronunciation.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/randomwords?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
