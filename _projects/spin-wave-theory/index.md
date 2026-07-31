---
title: "Spin Supersolid in Triangular Lattice"
description: "We study Spin Supersolid Candidates Na₂BaCo(PO₄)₂ using spin-wave theory, tensor network, renormalization group analysis."
categories: [Projects]
icon: fas fa-atom
tags: ["Na₂BaCo(PO₄)₂", "Spin Wave Theory", "Holstein-Primakoff", "Magnon Spectra"]
link: "https://arxiv.org/abs/2601.20963"
paper: "arXiv:2601.20963 (2026)"
permalink: /projects/spin-wave-theory/
order: 2
status: planned
project_type: physics
sitemap: false
---

## Overview

A Python package for linear spin wave theory (LSWT): magnon excitations of a
classical magnetic order are obtained by expanding a spin exchange
Hamiltonian to quadratic order and diagonalizing the resulting bosonic
theory, then used to compute the magnon spectrum's thermodynamic, dynamical,
and topological properties.

## Method

- Start from a bilinear spin exchange Hamiltonian on a given lattice and
  magnetic structure, with the classical ground-state order fixed per
  exchange configuration.
- Expand around that order with a Holstein-Primakoff transformation to get a
  bosonic Hamiltonian, then diagonalize it in momentum space with a
  Bogoliubov (BdG) transformation to obtain the magnon band structure.
- Layer solvers for exchange-parameter optimization and ground-state energy
  on top of the diagonalization core.

## Results

From the diagonalized magnon spectrum, the package computes thermodynamic
quantities (internal energy, entropy, specific heat), dynamical and
equal-time spin correlation functions, and topological invariants of the
magnon bands (Berry curvature, Chern number, thermal Hall conductance).

## Links

- [Linear-Spin-Wave-Theory](https://github.com/sungmin-park-dev/Linear-Spin-Wave-Theory) — Python package for linear spin wave theory (LSWT) computation
