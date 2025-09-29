# Steps to Create an S3 Bucket Using Terraform

1. **Create a Directory for the Project**:
   - Created a new directory for the Terraform project and navigated into it:
     ```bash
     mkdir terraform-s3 && cd terraform-s3
     ```

2. **Create a Terraform Configuration File**:
   - Created a file named `main.tf` to define the Terraform configuration:
     ```bash
     touch main.tf
     ```

3. **Write the Terraform Configuration**:
   - Added the configuration to `main.tf` to define the AWS provider and create an S3 bucket.

4. **Initialize Terraform**:
   - Initialized the Terraform project to download the necessary provider plugins:
     ```bash
     terraform init
     ```

5. **Validate the Configuration**:
   - Validated the configuration to ensure there were no syntax errors:
     ```bash
     terraform validate
     ```

6. **Preview the Changes**:
   - Ran the `terraform plan` command to preview the resources that would be created:
     ```bash
     terraform plan
     ```

7. **Apply the Configuration**:
   - Applied the configuration to create the S3 bucket:
     ```bash
     terraform apply
     ```
   - Confirmed the action by typing `yes` when prompted.

8. **Verify the S3 Bucket**:
   - Verified the bucket creation using the AWS Management Console or the AWS CLI:
     ```bash
     aws s3 ls
     ```

9. **Clean Up Resources (Optional)**:
   - Destroyed the resources to avoid unnecessary costs (if needed):
     ```bash
     terraform destroy
     ```
   - Confirmed the action by typing `yes` when prompted.