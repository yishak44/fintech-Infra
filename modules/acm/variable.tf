#Amazon Certificate Manager
variable "domain_name" {
  description = "Primary domain name for the certificate"
  type        = string
  default     = "yklogistictz.com"
}

variable "san_domains" {
  description = "Subject alternative names for the certificate"
  type        = list(string)
  default     = ["*.yklogistictz.com"]
}

variable "route53_zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
  default     = "Z049776718HA9DMQLRT6I" # Replace with actual Route 53 Zone ID
}

variable "tags" {
  description = "Common tags for the cluster resources"
  type        = map(string)
  default     = {
    env       = "dev",
    terraform = "true"
  }
}