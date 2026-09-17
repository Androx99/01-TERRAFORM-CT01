S C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2> aws sts get-caller-identity --region us-east-1
{                                                                             
    "UserId": "AROA5IEAOKSCSNMRW2RIJ:user3257447=a27275@svalero.com",
    "Account": "910802441349",
    "Arn": "arn:aws:sts::910802441349:assumed-role/voclabs/user3257447=a27275@svalero.com"
}

PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2> mkdir terraform-02-s3
>> cd terraform-02-s3


    Directorio: 
    C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2


Mode                 LastWriteTime         Length Name                        
----                 -------------         ------ ----                        
d-----        17/09/2026      9:21                terraform-02-s3             


PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2\terraform-02-s3> cd ..
PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2> mkdir terraform-02-s3
>> cd terraform-02-s3


    Directorio: 
    C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2


Mode                 LastWriteTime         Length Name                        
----                 -------------         ------ ----                        
d-----        17/09/2026      9:21                terraform-02-s3             


PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2\terraform-02-s3> cd ..
PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-01-ec2> cd ..
PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01> mkdir terraform-02-s3
>> cd terraform-02-s3


    Directorio: C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01


Mode                 LastWriteTime         Length Name                        
----                 -------------         ------ ----                        
d-----        17/09/2026      9:22                terraform-02-s3             


PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-02-s3> terraform init
>> terraform validate
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.65.0...
- Installed hashicorp/aws v6.65.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
Success! The configuration is valid.

PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-02-s3> terraform plan

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "cambia-este-nombre-por-uno-unico"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "terraform-s3-aula"
        }
      + tags_all                    = {
          + "Name" = "terraform-s3-aula"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.