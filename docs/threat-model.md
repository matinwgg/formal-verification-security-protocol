# Threat model

## Assets

The session secret and the authenticated identity are protected assets.

## Attacker capabilities

The attacker controls the communication channel and may observe, delay, reorder, drop or replay protocol messages. The attacker cannot directly compromise the trusted endpoints in this model.

## Security goals

1. **Secrecy:** the session secret is not learned through protocol transitions.
2. **Authentication:** a completed session corresponds to the intended authenticated client.
3. **Freshness:** a previous authentication transcript cannot be reused as a fresh challenge response.
4. **State safety:** invalid state transitions are unreachable.

## Explicit limitations

The model abstracts cryptographic operations. It does not prove the security of TLS, a production key exchange, an implementation, a compiler, or an operating system. Those require separate assumptions and verification layers.
