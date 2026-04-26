package matchday.betting.responsible

import future.keywords.if

# Bets MUST carry rg_check_id and pass server-side limit verification.
# Bypassing the limit check is forbidden (CLAUDE.md behavior rule).
default allow_bet := false

allow_bet if {
    input.request_path == "bet-feed"
    input.bet.rg_check_id != ""
    not input.fan.self_excluded
    input.fan.daily_spent_minor + input.bet.stake_minor <= input.fan.daily_limit_minor
    input.fan.kyc_status == "verified"
    input.fan.jurisdiction in input.allowed_jurisdictions
}

# Soft limit warning — does not block, but emits an event.
warn_soft_limit if {
    input.fan.daily_spent_minor >= 0.8 * input.fan.daily_limit_minor
}
