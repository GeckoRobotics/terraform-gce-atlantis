output "ip_address" {
  value       = var.regional_load_balancing ? google_compute_address.default_regional[0].address : google_compute_global_address.default[0].address
  description = "The IPv4 address of the load balancer"
}

output "cos_image_id" {
  value       = data.google_compute_image.cos.image_id
  description = "The unique identifier of the Container-Optimized OS image used to create the Compute Engine instance."
}

output "managed_ssl_certificate_certificate_id" {
  value       = google_compute_managed_ssl_certificate.default[0].certificate_id
  description = "The unique identifier of the Google Managed SSL certificate"
}

output "managed_ssl_certificate_expire_time" {
  value       = google_compute_managed_ssl_certificate.default[0].expire_time
  description = "Expire time of the Google Managed SSL certificate"
}

output "iap_backend_service_name" {
  value       = var.iap != null ? (var.regional_load_balancing ? google_compute_region_backend_service.iap_regional[0].name : google_compute_backend_service.iap[0].name) : null
  description = "Name of the optional IAP-enabled backend service"
}
