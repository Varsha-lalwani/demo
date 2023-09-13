resource "harness_platform_slo" "SLO_Terraform" {
  depends_on = [
    harness_platform_monitored_service.service_ref_environment_ref,
  ]
  org_id     = "cvng"
  project_id = "ecommerce"
  identifier = "SLO_Terraform"
  request {
    name              = "SLO Terraform"
    description       = "SLO as Code"
    tags              = ["foo:bar", "bar:foo"]
    user_journey_refs = ["End-to-End"]
    slo_target {
      type                  = "Calender"
      slo_target_percentage = 96
      spec                  = jsonencode({
        type = "Monthly"
        spec = {
          dayOfMonth = 6
        }
      })
    }
    type = "Simple"
    spec = jsonencode({
      monitoredServiceRef       = harness_platform_monitored_service.service_ref_environment_ref.id
      healthSourceRef           = "prometheus"
      serviceLevelIndicatorType = "Availability"
      serviceLevelIndicators    = [
        {
          name       = "name"
          identifier = "SLO_Terraform"
          type       = "Availability"
          spec       = {
            type = "Threshold"
            spec = {
              metric1        = "prometheus_metric"
              thresholdValue = 12
              thresholdType  = "<="
            }
          }
          sliMissingDataType = "Good"
        }
      ]
    })
  }
}
