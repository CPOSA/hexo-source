---
title: 'MDP, value function, Bellman function'
categories:
  - RL
---

# MDP

## Define

<div style="display:flex; align-items:center;">

<div style="flex:1;">

An Finite MDP is defined by:
- A finite set of states $s \in S$
- A finite set of action $a \in A$
- A transition function $T(s, a, s')$
   - Probablity that a fprm S leads to $s'$, ie. $P(s'|s,a)$
   - also called the model or the dynamics
- A reward function $R(s)$ (Sometimes R(s,a) or R(s,a,s'))
- A start state
- Maybe a terminal state

</div>

<div style="flex:1; text-align:center;">
  <img src="MDP_1.png" alt="MDP Diagram" width="300">
</div>

</div>

we have $||V||_{\infin} = \underset{s}{max} |V(s)| $, ||V|| is norm

$BV(k) = R(s) + \gamma \underset{a \in A}{\text{max}} \underset{s' \in S}{\sum} P(s'|s,a)V(s')$

$B_{\pi}V(s) = \mathbb{E}_{a\sim\pi}[R(s,a) + \gamma \underset{s' \in S}{\sum} p(s'|s,a) V(s')]$

