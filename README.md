 Terraform Dynamic Lookup — Azure Infrastructure
This project demonstrates how to build a **modular and dynamic Terraform setup** for **Azure** using key concepts like `for_each`, `maps`, `dynamic blocks`, and `null checks`.
It helps create multiple **Resource Groups**, **Virtual Networks**, and **Subnets** dynamically — all from a simple variable file, without repetitive code. 💡

Each **module** defines reusable logic for one resource type (e.g., Resource Group or Virtual Network).
## 🚀 How to Use
1. **Clone the Repository**
   ```bash
   git clone https://github.com/souravkumarkuila/Terraform-dynamic-lookup.git
   cd Terraform-dynamic-lookup/todo/dev
   🚀 How It Works

Define your input variables (Resource Groups, Virtual Networks, Subnets) in one place.

Pass them to reusable modules that use loops and dynamic blocks to create resources automatically.

Terraform handles dependencies and order of creation, ensuring resources are deployed correctly.

🧩 Key Terraform Concepts Used
1️⃣ for_each

Used to loop through multiple items (like Resource Groups or Virtual Networks). It allows you to create many similar resources dynamically from a map without repeating code.

2️⃣ map

Maps store multiple items in key–value format. This makes it easy to manage different environments or multiple resources with varying configurations in one place.

3️⃣ dynamic block

Dynamic blocks are used to create nested resources like subnets inside a Virtual Network. Instead of writing multiple subnet blocks, Terraform loops through the provided data and builds them dynamically.

4️⃣ null check

The == null ? {} : condition ensures Terraform doesn’t throw an error when an optional value (like subnets) is not provided.
It basically says — “If no subnets exist, skip this part.”

5️⃣ locals

Locals store common values like environment name or project tag that can be reused across modules. This keeps configurations consistent and avoids repeating the same values everywhere.

6️⃣ depends_on

Ensures resources are created in the correct order. For example, a Virtual Network depends on the Resource Group being created first. This guarantees smooth and predictable deployment.

📘 Concepts Recap (in Simple Terms)

for_each: Helps create multiple resources automatically

map: Stores data for multiple resources

dynamic block: Creates nested resources dynamically

null check: Skips creation when value not present

locals: Stores shared tags and settings

depends_on: Controls the order of resource creation

🧠 Why This Setup Matters

Reusable and modular infrastructure code

Easy to add or remove resources without changing main logic

Consistent tagging and structure across all resources

Safe dependency handling between resources

Beginner-friendly approach for scalable Azure automation


