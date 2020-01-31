from face_mask.__main__ import __version__
from setuptools import setup, find_packages


install_requirements = []
for line in open('requirements.txt'):
    requirement = line.strip()
    if requirement:
        install_requirements.append(requirement)


setup(
    name="face-mask",
    version=__version__,
    description="Useful data structures, utils for Python.",
    long_description=open('README.md').read(),
    author="Prodesire",
    author_email='wangbinxin001@126.com',
    license='MIT License',
    url="https://github.com/Prodesire/face-mask",
    install_requires=install_requirements,
    packages=find_packages(),
    classifiers=[
        'Operating System :: OS Independent',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: Implementation',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',
        'Topic :: Software Development :: Libraries'
    ],
    entry_points={
        'console_scripts': ['face-mask=face_mask.__main__:cli'],
    },
    include_package_data=True,
)
