阿里云任播弹性公网IP Terraform模块

# terraform-alicloud-eipanycast

[English](https://github.com/alibabacloud-automation/terraform-alicloud-eipanycast/blob/main/README.md) | 简体中文

本 Module 用于在阿里云创建 [任播弹性公网IP(Anycast EIP)](https://help.aliyun.com/document_detail/169284.html) 相关资源。

## 用法

```hcl
module "eipanycast" {
  source = "alibabacloud-automation/eipanycast/alicloud"

  create                   = true
  service_location         = "international"
  bind_instance_id         = "your-slb-instance-id"
  bind_instance_region_id  = "cn-hongkong"
  anycast_eip_address_name = "my-anycast-eip"
  bandwidth                = 200
  description              = "全球负载均衡任播EIP"
}
```

## 示例

* [完整示例](https://github.com/alibabacloud-automation/terraform-alicloud-eipanycast/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_eipanycast_anycast_eip_address.eip_address](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/eipanycast_anycast_eip_address) | resource |
| [alicloud_eipanycast_anycast_eip_address_attachment.eip_address_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/eipanycast_anycast_eip_address_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_anycast_eip_address_name"></a> [anycast\_eip\_address\_name](#input\_anycast\_eip\_address\_name) | The name of any cast service. | `string` | `null` | no |
| <a name="input_bandwidth"></a> [bandwidth](#input\_bandwidth) | The bandwidth of eip anycast service. | `number` | `null` | no |
| <a name="input_bind_instance_id"></a> [bind\_instance\_id](#input\_bind\_instance\_id) | The instance ID to bind to the EIP Anycast service. This should typically be a SLB instance ID. | `string` | n/a | yes |
| <a name="input_bind_instance_region_id"></a> [bind\_instance\_region\_id](#input\_bind\_instance\_region\_id) | The region ID of the instance to bind to the EIP Anycast service. | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Whether to create resources in module. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of any cast service. | `string` | `null` | no |
| <a name="input_internet_charge_type"></a> [internet\_charge\_type](#input\_internet\_charge\_type) | The charge type of EIP Anycast service. | `string` | `"PayByBandwidth"` | no |
| <a name="input_service_location"></a> [service\_location](#input\_service\_location) | The location of any cast service. | `string` | `"international"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_eip_anycast_service_id"></a> [this\_eip\_anycast\_service\_id](#output\_this\_eip\_anycast\_service\_id) | The EIP Anycast service ID. |
<!-- END_TF_DOCS -->

## 提交问题

如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## 许可

Apache 2 Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)