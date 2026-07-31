---
title: "Spin Supersolid in Triangular Lattice"
description: "Studying the spin supersolid candidate Na₂BaCo(PO₄)₂ with spin-wave theory, tensor networks, and renormalization group analysis."
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

Studies the spin supersolid phase of the triangular-lattice antiferromagnet
Na₂BaCo(PO₄)₂, combining spin-wave theory, tensor-network methods, and
renormalization-group analysis to trace its stability against spin-orbit
coupling and thermal fluctuations — the subject of ["Spin-orbit-induced
Instability and Finite-Temperature Stabilization of a Triangular-lattice
Supersolid"](https://arxiv.org/abs/2601.20963) (arXiv:2601.20963, 2026).

The code behind this splits into two parts: analysis scripts specific to
this paper's tensor-network and renormalization-group calculations, and the
spin-wave-theory core, which was generalized beyond this one result and
published separately as a reusable package (see Links).

## Method: Spin-Wave Component

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

- [Spin-orbit-induced Instability and Finite-Temperature Stabilization of a Triangular-lattice Supersolid](https://arxiv.org/abs/2601.20963) — arXiv:2601.20963 (2026)
- [Linear-Spin-Wave-Theory](https://github.com/sungmin-park-dev/Linear-Spin-Wave-Theory) — Python package for linear spin wave theory (LSWT) computation, generalized from this project's spin-wave component
