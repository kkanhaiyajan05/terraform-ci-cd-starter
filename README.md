# Steps to Run the GitHub Actions Workflow to Create an S3 Bucket

1. **Navigate to the Actions Tab**:
   - Go to your GitHub repository.
   - Click on the **Actions** tab at the top of the repository.

2. **Select the Workflow**:
   - In the list of workflows, find the workflow named **"Terraform AWS S3 Deployment"**.
   - Click on it to open the workflow details.

3. **Trigger the Workflow Manually**:
   - Click the **"Run workflow"** button on the right-hand side.
   - A dialog box will appear asking for input.

4. **Provide the Bucket Name**:
   - In the input field labeled **"Name of the S3 bucket to create"**, enter the desired name for your S3 bucket.
   - Ensure the bucket name adheres to AWS S3 bucket naming rules (e.g., globally unique, no uppercase letters, etc.).

5. **Run the Workflow**:
   - Click the **"Run workflow"** button to start the workflow.

6. **Monitor the Workflow Execution**:
   - The workflow will start running. You can monitor its progress in the **Actions** tab.
   - The workflow will go through the following steps:
     - Checkout the repository.
     - Set up Terraform.
     - Initialize Terraform (`terraform init`).
     - Validate the Terraform configuration (`terraform validate`).
     - Plan the changes (`terraform plan`).
     - Apply the changes (`terraform apply`).

7. **Verify the S3 Bucket**:
   - Once the workflow completes successfully, verify that the S3 bucket has been created:
     - Check the AWS Management Console under the S3 service.
     - Look for the bucket with the name you provided during the workflow trigger.

8. **Troubleshooting**:
   - If the workflow fails, check the logs for errors in the **Actions** tab.
   - Common issues include invalid bucket names, missing AWS credentials, or insufficient permissions.

9. **Clean Up Resources (Optional)**:
   - If you no longer need the S3 bucket, you can destroy it by modifying the Terraform configuration and re-running the workflow with the necessary changes.