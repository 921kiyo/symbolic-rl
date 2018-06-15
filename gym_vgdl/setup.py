from setuptools import setup, find_packages
import sys, os.path

# Don't import gym module here, since deps may not be installed
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'gym_vgdl'))

setup(name='gym_vgdl',
      version=0.1,
      description='VGDL',
      url='',
      author='',
      author_email='',
      license='',
      packages=[package for package in find_packages()
                if package.startswith('gym_vgdl')],
      install_requires=[
          'pygame',
          'gym',
      ],
      zip_safe=False,
)

