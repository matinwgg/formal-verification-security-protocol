# Formal Verification of a Security Protocol

## 📖 About

A formal-methods laboratory for reasoning about authentication, secrecy, replay resistance, and protocol-state invariants before relying on an implementation.

## ✨ Features

- Client/server/attacker protocol model
- Delayed, reordered, and replayed-message scenarios
- Secrecy and authentication properties
- Replay-resistance invariants
- Separation between formal specification and reference state machine

## 🛠 Tech Stack

- TLA+ for formal specification
- Rust for reference state-machine implementation
- Model-checking / verification tooling as configured in the repository

## 🏗 Architecture

```text
Protocol specification
       ↓
States + transitions + attacker actions
       ↓
Safety/liveness properties
       ↓
Model checking
       ↓
Reference implementation tests
```

## 📁 Project Structure

```text
.
├── tla/        # TLA+ specification and invariants
├── rust/       # Reference state-machine implementation
├── docs/       # Threat model and verification notes
└── README.md
```

## 📋 Prerequisites

- TLA+ tooling/model checker
- Rust toolchain

## 🚀 Getting Started

```bash
git clone https://github.com/matinwgg/formal-verification-security-protocol.git
cd formal-verification-security-protocol
cargo test
```

Run the TLA+ specification using the model-checking configuration supplied under `tla/`.

## 🧮 Verification Model

The protocol is reasoned about as a transition system. Security properties are predicates over reachable states; counterexamples are traces showing how an invariant can be violated.

## 🧪 Testing

Reference implementation tests are complementary to formal verification; passing tests do not prove the protocol properties for all possible executions.

## 🔐 Security Scope

Cryptographic primitives are idealized abstractions in the model. Formal verification of the model does not automatically establish security of a concrete cryptographic implementation or deployment.

## 🚧 Future Work

- Temporal liveness properties
- More attacker capabilities
- Refinement proofs
- Concrete cryptographic assumptions
- Automated model-checking CI

## 🤝 Contributing

Every protocol change should update the model, invariants, counterexample analysis, and reference implementation tests together.

## 📄 License

See repository license information.

## 👨‍💻 Author

**Matin Odoom**
