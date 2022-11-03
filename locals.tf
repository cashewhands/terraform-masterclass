locals {

  default_tags = merge(var.default_tags, {
    Environment = var.environment
  })
  test = "this is the output"
}