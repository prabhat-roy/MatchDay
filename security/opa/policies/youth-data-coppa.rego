package matchday.academy.coppa

import future.keywords.if
import future.keywords.in

# COPPA — under-13 youth athlete records require valid parental consent token.
default allow := false

allow if {
    not input.subject.minor
}

allow if {
    input.subject.minor
    input.consent.id != ""
    input.consent.expires_at > input.now
    input.requested_scope in input.consent.scopes
    input.audit.actor_id != ""
}

deny[msg] if {
    input.subject.minor
    input.consent.id == ""
    msg := "youth athlete data access requires a parental ConsentToken"
}

deny[msg] if {
    input.subject.minor
    input.requested_scope == "third-party-marketing"
    msg := "third-party marketing on minors is forbidden under COPPA"
}
