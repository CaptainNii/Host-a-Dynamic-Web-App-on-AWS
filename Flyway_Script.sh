#!/bin/bash

S3_URI=s3://nimbusseven-bucket/V1__shopwise.sql
RDS_ENDPOINT=dev-rds-db.c45ka8sysxji.us-east-1.rds.amazonaws.com
RDS_DB_NAME="DATABASE_NAME_HERE"
RDS_DB_USERNAME="DATABASE_USERNAME_HERE"
RDS_DB_PASSWORD='YOUR_PASSWORD_HERE'

# Update all packages
sudo yum update -y

# Download and extract Flyway And Create a symbolic link to make Flyway accessible globally
wget -qO- https://download.red-gate.com/maven/release/com/redgate/flyway/flyway-commandline/11.11.1/flyway-commandline-11.11.1-linux-x64.tar.gz | tar -xvz

sudo ln -s `pwd`/flyway-11.11.1/flyway /usr/local/bin

# Create the SQL directory for migrations
sudo mkdir sql

# Download the migration SQL script from AWS S3
sudo aws s3 cp "$S3_URI" sql/

# Run Flyway migration
flyway -url=jdbc:mysql://"$RDS_ENDPOINT":3306/"$RDS_DB_NAME" \
  -user="$RDS_DB_USERNAME" \
  -password="$RDS_DB_PASSWORD" \
  -locations=filesystem:sql \
  migrate
