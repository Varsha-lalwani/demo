resource "harness_platform_environment" "environment_ref" {
	identifier = "terraform_env"
	name = "terraform_env"
	org_id = "cvng"
	project_id = "ecommerce"
	tags = ["foo:bar", "baz"]
	type = "PreProduction"
}
