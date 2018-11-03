# Symbolic Reinforcement Learning using Inductive Logic Programming

## About the project

We developed ILP(RL), a new way of reinforcement learning (RL) method by applying ASP-based ILP into RL. 

**The full report can be found [here](https://github.com/921kiyo/Symbolic_RL/blob/master/report.pdf).**

This project is conducted for  [MSc Individual Projects](https://www.doc.ic.ac.uk/lab/msc-projects/ProjectsGuide.html) in Computing Science at [Imperial College London](http://www.imperial.ac.uk/computing/).

## Abstract
Reinforcement Learning (RL) has been applied and proven to be successful in many domains.
However, most of current RL methods face limitations, namely, low learning efficiency, 
inability to use abstract reasoning, and inability of transfer learning to similar environments.
In order to tackle these shortcomings, we introduce a new learning approach called \textit{ILP(RL)}.
ILP(RL) is based on Inductive Logic Programming (ILP) and Answer Set Programming (ASP) and learns a state transition with ILP and navigate through an environment using ASP.
ILP(RL) learns a general concept of a state transition, called a hypothesis in an environment, and generates a plan for a sequence of actions to a destination.
The learnt hypotheses is highly expressive and transferable to a similar environment. 
While there are a number of past papers that attempt to incorporate symbolic representation to RL problems in order to achieve efficient learning, 
there has not been any attempt of applying ASP-based ILP into a RL problem.
We evaluated ILP(RL) in a various simple maze environments, and show that ILP(RL) finds an optimal policy faster than Q-learning.
We also show that transfer learning of the learnt hypothesis successfully improves learning on a new but similar environment.
While this preliminary ILP(RL) framework has limitations for scalability and flexibility, the results of the evaluations are promising, and open up an avenue for future research directions.

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
