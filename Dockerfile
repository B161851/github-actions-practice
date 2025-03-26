# Use an official Spark image
FROM bitnami/spark:latest

# Install Python and necessary dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install pyspark boto3 awswrangler

# Set environment variables for AWS credentials (optional if using IAM roles or environment variables)
ENV AWS_ACCESS_KEY_ID=<your_access_key>
ENV AWS_SECRET_ACCESS_KEY=<your_secret_key>
ENV AWS_DEFAULT_REGION=ap-south-1

# Set the entry point to run your PySpark script
ENTRYPOINT ["python3"]
