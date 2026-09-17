PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01> aws --version
aws-cli/2.36.44 Python/3.14.6 Windows/11 exe/AMD64
PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01> aws sts get-caller-identity --region us-east-1
{                                                                             
    "UserId": "AROA5IEAOKSCSNMRW2RIJ:user3257447=a27275@svalero.com",
    "Account": "910802441349",
    "Arn": "arn:aws:sts::910802441349:assumed-role/voclabs/user3257447=a27275@svalero.com"
}

PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01> aws sts get-caller-identity --region us-east-1
{                                                                             
    "UserId": "AROA5IEAOKSCSNMRW2RIJ:user3257447=a27275@svalero.com",
    "Account": "910802441349",
    "Arn": "arn:aws:sts::910802441349:assumed-role/voclabs/user3257447=a27275@svalero.com"
}

PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01> terraform version
Terraform v1.16.2
on windows_amd64
PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01> mkdir terraform-00-configuracion
>> cd terraform-00-configuracion
>> code .


    Directorio: C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01


Mode                 LastWriteTime         Length Name                        
----                 -------------         ------ ----                        
d-----        17/09/2026      8:37                terraform-00-configuracion  


PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-00-configuracion> terraform init
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
PS C:\Clase\devops\01-TERRAFORM-CT01\01-TERRAFORM-CT01\terraform-00-configuracion> terraform validate