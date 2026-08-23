# Formal Verification of a Security Protocol

A small formal-methods laboratory for reasoning about authentication, secrecy and replay resistance before implementation.

## Model

The protocol models a client, authentication server and attacker-controlled network. Messages can be delayed, reordered or replayed. The intended security properties are:

- an attacker cannot learn the session secret
- a successful session is bound to the authenticated client
- replaying an old authentication message cannot create a fresh session
- protocol state remains internally consistent

The repository separates the formal specification from the reference state machine so implementation tests do not substitute for protocol-level reasoning.

## Structure

- `tla/` — TLA+ specification and invariants
- `rust/` — reference state-machine implementation
- `docs/` — threat model and verification notes

## Scope

This is an educational verification model, not a claim that a production authentication protocol has been formally verified. Cryptographic primitives are treated as idealized abstractions in the model.
