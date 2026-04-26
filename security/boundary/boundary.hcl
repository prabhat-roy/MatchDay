controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/matchday" }
}
worker {
  name = "worker-matchday-1"
  controllers = ["controller-1.boundary.matchday.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/matchday-boundary"
}
