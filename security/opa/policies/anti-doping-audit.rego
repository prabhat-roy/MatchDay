package matchday.medicine.antidoping

import future.keywords.if

# Anti-doping data access requires:
#   1. Caller principal in matchday-anti-doping namespace.
#   2. Valid AuditMetadata header (actor_id, actor_role, ip_address).
#   3. Action is read or append — UPDATE / DELETE always denied (append-only).
default allow := false

allow if {
    input.namespace == "matchday-anti-doping"
    input.audit.actor_id != ""
    input.audit.actor_role in {"wada-officer","platform-admin","club-medic"}
    input.audit.ip_address != ""
    input.action in {"read","append"}
}

deny[msg] if {
    input.action in {"update","delete","truncate"}
    msg := sprintf("anti-doping is append-only; action %q forbidden", [input.action])
}

deny[msg] if {
    input.namespace == "matchday-anti-doping"
    input.audit.actor_id == ""
    msg := "anti-doping access requires AuditMetadata.actor_id"
}
