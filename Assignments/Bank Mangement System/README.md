## **Bank Management System**
A simple **Bash-based Bank Management System** that allows adding, updating, deleting, saving, and printing client data. The project is structured into multiple files for better maintainability.

---

## 📌 **Features**
✔️ Add a new client  
✔️ Update existing client details  
✔️ Delete a client record  
✔️ Save client data to a file  
✔️ Print all saved client data  

---

## 🏗 **Project Structure**
```
bank_management/
│── bank_management.sh                # Main script (entry point)
│── client_operations.sh              # Functions for adding, updating, deleting clients
│── data_operations.sh                # Functions for printing and saving client data
│── Database Bank Clients.txt         # File storing client data (auto-created)
```

---

## 🚀 **Installation & Setup**
### **1️⃣ Clone the Repository**
```bash
git clone https://github.com/Mohammedkh97/Embedded-Linux-AMIT-ODC-Scholarship/tree/main/Assignments/Bank%20Mangement%20System
cd bank-management
```

### **2️⃣ Make the Scripts Executable**
```bash
chmod +x bank_management.sh client_operations.sh data_operations.sh
```

### **3️⃣ Run the Program**
```bash
./bank_management.sh
```

---

## 📖 **Usage Guide**
Once the script is executed, you will see the **main menu**:

```
===================================
    Bank Management System
===================================
1. Add Client
2. Update Client
3. Delete Client
4. Print Client Data
5. Save Client Data to File
6. Exit
Enter your choice: _
```

### **💡 Example: Add a New Client**
1️⃣ Select **Option 1** (Add Client).  
2️⃣ Enter **Client Name, ID, and Account Number**.  
3️⃣ The system **saves the data automatically**.

---

## 📝 **File Handling**
- **`Database Bank Clients.txt`** is used as a database file.
- The system automatically creates this file if it doesn’t exist.
- **Data is preserved** even after exiting.

---

## ⚡ **Functions Overview**
| Function Name          | Description |
|-----------------------|-------------|
| `addNameClient()`     | Adds a new client with name, ID, and account number. |
| `updateClient()`      | Updates client details using the ID. |
| `deleteClient()`      | Deletes a client using the ID. |
| `saveClientDataToFile()` | Saves data to `Database Bank Clients.txt` without overwriting. |
| `printClientData()`   | Displays all saved client data. |

---

## **Advantages of Splitting Code**
✔ **Better Organization** – Separates logic for adding/updating/deleting from printing/saving.  
✔ **Reusability** – You can reuse `client_operations.sh` or `data_operations.sh` in other projects.  
✔ **Maintainability** – Easier debugging and updates.  



---
## 🔒 **License**
This project is licensed under the **MIT License**.

---

## 📧 **Contact**
### 🌐 Connect with Me
  [![Github](https://img.shields.io/badge/-Github-000?style=flat&logo=Github&logoColor=white)](https://github.com/mohammedkh97)
  [![Linkedin](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://linkedin.com/in/mohammed-khalaf97)
  [![Gmail](https://img.shields.io/badge/-Gmail-c14438?style=flat&logo=Gmail&logoColor=white)](mailto:Mohamedkhalaf20172020@gmail.com)
  [![Facebook](https://img.shields.io/badge/-Facebook-1877F2?style=flat&logo=facebook&logoColor=white)](https://www.facebook.com//groups/1241072483656472) <!-- Replace with your profile link -->
  [![WhatsApp](https://img.shields.io/badge/-WhatsApp-25D366?style=flat&logo=whatsapp&logoColor=white)](https://wa.me/+201022508443) <!-- Replace with your number -->
