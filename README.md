# 🚀 Dynamic Website Hosting on AWS – DevOps Project

This project demonstrates how to design, deploy, and host a **dynamic website** on **Amazon Web Services (AWS)** with a **secure, scalable, and fault-tolerant architecture**.

The repository contains:

* 🖼️ **Reference Architecture Diagram**
* ⚙️ **Deployment Scripts (Infrastructure & Application)**

---

## 📌 Project Overview

The goal of this project is to build a highly available, secure, and elastic infrastructure that can automatically scale to handle web traffic while following best practices in AWS cloud architecture.

---

## 🛠️ AWS Services & Components Used

1. **Virtual Private Cloud (VPC)**

   * Configured with **public and private subnets** across two Availability Zones for high availability.

2. **Internet Gateway (IGW)**

   * Enables public subnet resources (like the Load Balancer and NAT Gateway) to access the internet.

3. **Security Groups**

   * Act as virtual firewalls to tightly control inbound and outbound traffic.

4. **Multi-AZ Deployment**

   * Leveraged two Availability Zones to ensure **reliability and fault tolerance**.

5. **Public Subnets**

   * Used for infrastructure components such as the **Application Load Balancer** and **NAT Gateway**.

6. **EC2 Instance Connect Endpoint**

   * Configured for secure access to resources in both public and private subnets.

7. **Private Subnets (Application & Data Tiers)**

   * Web servers (EC2 instances) placed in private subnets for enhanced security.

8. **NAT Gateway**

   * Allowed instances in private subnets to securely access the internet (e.g., for software updates).

9. **Amazon EC2 (Elastic Compute Cloud)**

   * Hosted the website on EC2 instances running within private subnets.

10. **Application Load Balancer (ALB)**

    * Distributed incoming web traffic evenly across EC2 instances in an Auto Scaling Group.

11. **Auto Scaling Group (ASG)**

    * Automatically managed EC2 instances for **availability, scalability, fault tolerance, and elasticity**.

12. **AWS Certificate Manager (ACM)**

    * Secured application traffic with SSL/TLS certificates (HTTPS).

13. **Amazon Simple Notification Service (SNS)**

    * Configured to send alerts related to Auto Scaling activities.

14. **Amazon Route 53**

    * Registered the domain name and created DNS records to route traffic to the ALB.

15. **Amazon S3 (Simple Storage Service)**

    * Used to store application code and assets.

---

## 📂 Repository Contents

* `architecture-diagram.png` – Reference diagram of the AWS infrastructure.
* `deployment-scripts/` – Scripts for provisioning resources and deploying the website.
* `app/` – Website source code (if included).
* `README.md` – Project documentation.

---

## ⚡ Key Features

* **Highly Available**: Multi-AZ design with load balancing.
* **Secure by Design**: Private subnets, security groups, and SSL termination.
* **Scalable**: Auto Scaling Group adjusts compute resources automatically.
* **Elastic**: Infrastructure adapts to changing traffic demands.
* **Monitored & Notified**: SNS alerts for scaling events.

---

## 🚀 Deployment Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/<your-username>/<your-repo>.git
   cd <your-repo>
   ```

2. Review the **architecture diagram** to understand the design.

3. Deploy infrastructure using provided **IaC (Infrastructure-as-Code) scripts** (Terraform/CloudFormation if included).

4. Upload website code to S3 (if needed) and configure EC2 instances via user data or deployment scripts.

5. Access the application via the **Route 53 domain name** after deployment is complete.

---

## 📧 Notifications

SNS is configured to send notifications (e.g., when new EC2 instances are launched or terminated by the Auto Scaling Group). Ensure your email is subscribed to the SNS topic to receive updates.

---

## 📖 Learning Outcomes

Through this project, you gain hands-on experience with:

* Designing a **VPC network topology** (public/private subnets).
* Hosting applications in **private EC2 instances**.
* Using **ALB + ASG** for high availability & fault tolerance.
* Managing **secure communications** with ACM.
* Implementing **automated alerts** via SNS.
* Configuring **Route 53 for DNS management**.

---

## 🔗 Reference

This project was built as part of a **DevOps hands-on learning exercise** on AWS, leveraging best practices for cloud-native application hosting.
