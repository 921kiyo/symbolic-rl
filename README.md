# Symbolic Reinforcement Learning using Inductive Logic Programming

## About the project

We developed ILP(RL), a new way of reinforcement learning (RL) method by applying ASP-based ILP into RL. 

**The full report can be found [here](https://github.com/921kiyo/Symbolic_RL/blob/master/report.pdf).**

This project is conducted for  [MSc Individual Projects](https://www.doc.ic.ac.uk/lab/msc-projects/ProjectsGuide.html) in Computing Science at [Imperial College London](http://www.imperial.ac.uk/computing/).

## Installation & Dependencies
In order to run the ILP(RL), you need the following dependencies.

- Python 3
- [Clingo5](https://github.com/potassco/clingo)
- [ILASP2i](https://sourceforge.net/projects/spikeimperial/files/ILASP/)
- [py-vdgl](https://github.com/rubenvereecken/py-vgdl)
- [OpenAI gym](https://github.com/openai/gym)

### Create Virtual Environment

The first step is to install *virtualenv*.

```pip install virtualenv```

The next is to initialise the virtual environment with 

```virtualenv -p python3 venv```

Get into the virtualenv

```source venv/bin/activate```

Install all the dependencies within the virtual environment.

```pip install -r requirements.txt```
