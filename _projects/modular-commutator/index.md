---
title: "Modular Commutator and Chiral Topological Order"
description: "Uncovering the geometric additivity of the modular commutator."
categories: [Projects]
icon: fas fa-calculator
tags: ["Entanglement Bootstrap", "Chiral Topological Order", "Free Fermion"]
link: "https://journals.aps.org/prb/abstract/10.1103/PhysRevB.111.075167"
paper: "PRB 111, 075167 (2025)"
permalink: /projects/modular-commutator/
order: 1
status: completed
project_type: physics
---

## Overview

Implementation and numerical study of the modular commutator, an
entanglement-based diagnostic for chiral topological order in
two-dimensional gapped quantum phases. This project underlies
["Geometric additivity of the modular commutator for multipartite
entanglement"](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.111.075167),
published with Isaac H. Kim and Eun-Gook Moon in *Physical Review B* 111,
075167 (2025).

## Motivation

The modular commutator detects chirality directly from a many-body ground
state's entanglement structure, without relying on edge-mode counting or an
explicit measurement of Hall conductance. It was originally defined for
tripartite entanglement; extending it to multipartite regions raises a
natural question — does the quantity compose additively across
geometrically separated regions, and what does that additivity reveal about
the underlying topological data of the phase?

## Implementation

- Computed modular commutator values for free-fermion lattice models via
  correlation-matrix methods, where subsystem entanglement entropies reduce
  to closed-form expressions.
- Verified geometric additivity of the modular commutator across multipartite
  region configurations and checked the result against the expected
  chiral-central-charge scaling.
- Built a reusable pipeline for extracting subsystem entanglement entropies
  from a ground state and combining them into modular commutator values
  across arbitrary tripartitions.

## Links

- [Geometric additivity of the modular commutator for multipartite entanglement](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.111.075167) — *Physical Review B* 111, 075167 (2025)
