terraform {
  backend "http" {
    address = "https://app.harness.io/gateway/iacm/api/orgs/cvng/projects/IACM_SRM/workspaces/test/terraform-backend?accountIdentifier=-k53qRQAQ1O7DBLb9ACnjQ"
    username = "harness"
    password = "pat.-k53qRQAQ1O7DBLb9ACnjQ.65112df45128e32db3c56cfe.AXZpLwIpujEEE0r3fil0"
    lock_address = "https://app.harness.io/gateway/iacm/api/orgs/cvng/projects/IACM_SRM/workspaces/test/terraform-backend/lock?accountIdentifier=-k53qRQAQ1O7DBLb9ACnjQ"
    lock_method = "POST"
    unlock_address = "https://app.harness.io/gateway/iacm/api/orgs/cvng/projects/IACM_SRM/workspaces/test/terraform-backend/lock?accountIdentifier=-k53qRQAQ1O7DBLb9ACnjQ"
    unlock_method = "DELETE"
  }
}
