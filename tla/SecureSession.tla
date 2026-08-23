------------------------------ MODULE SecureSession ------------------------------
EXTENDS Naturals, Sequences

CONSTANTS Client, Server, Secret

VARIABLES state, nonce, learned, sessions

States == {"idle", "challenged", "authenticated"}

Init ==
  /\ state = "idle"
  /\ nonce = 0
  /\ learned = {}
  /\ sessions = {}

Challenge ==
  /\ state = "idle"
  /\ nonce' = nonce + 1
  /\ state' = "challenged"
  /\ UNCHANGED <<learned, sessions>>

Authenticate ==
  /\ state = "challenged"
  /\ state' = "authenticated"
  /\ sessions' = sessions \cup {nonce}
  /\ UNCHANGED <<nonce, learned>>

Next == Challenge \/ Authenticate

TypeOK ==
  /\ state \in States
  /\ nonce \in Nat
  /\ learned \subseteq {Secret}

SecretSecrecy == Secret \notin learned

FreshSession ==
  state = "authenticated" => nonce \in sessions

=============================================================================
