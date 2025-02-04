### 🏦 Bank Management System

This is a simple **Bank Management System** implemented in **Bash** with a **Zenity-based GUI**. The system allows users to manage client records, including adding, updating, deleting, saving, and viewing client data through interactive dialog boxes.  

---

## ✨ Features  
✅ **Add Client** – Enter client details via a form.  
✅ **Update Client** – Modify existing client information.  
✅ **Delete Client** – Remove a client by ID.  
✅ **Save Data** – Persist client data to a file.  
✅ **View Data** – Display saved client records in a readable format.  

---

## 🖥️ How It Works  
The system uses **Zenity** to provide a **graphical user interface (GUI)** instead of a command-line interface. It saves data in a simple text file (`Database Bank Clients.txt`), formatted as:  

```
Name | ID | Account Number
----------------------------
John Doe | 123 | 456789
Alice Smith | 456 | 987654
```

---

## 🚀 Installation & Setup  
### 1️⃣ Install Zenity  
Make sure **Zenity** is installed on your system:  

```bash
sudo apt-get install zenity  # Debian/Ubuntu
sudo dnf install zenity      # Fedora
brew install zenity          # macOS (Homebrew)
```

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

## 📂 Project Structure  
```
📁 bank-management-system
├── 📄 bank.sh               # Main script with GUI menu
├── 📄 client_operations.sh  # Add, update, delete client functions
├── 📄 data_operations.sh    # Save and print client data functions
├── 📄 Database Bank Clients.txt  # Stored client data
└── 📄 README.md             # Project documentation
```

---

## 📸 Screenshots  
### 🏠 Main Menu  
![Main Menu](https://your-image-url.com/main-menu.png)  

### ➕ Add Client  
![Add Client](https://your-image-url.com/add-client.png)  

### 🗑 Delete Client  
![Delete Client](https://your-image-url.com/delete-client.png)  

---

## 📝 **File Handling**
- **`Database Bank Clients.txt`** is used as a database file.
- The system automatically creates this file if it doesn’t exist.
- **Data is preserved** even after exiting.

---

## **Advantages of Splitting Code**
✔ **Better Organization** – Separates logic for adding/updating/deleting from printing/saving.  
✔ **Reusability** – You can reuse `client_operations.sh` or `data_operations.sh` in other projects.  
✔ **Maintainability** – Easier debugging and updates.  

---

## 📜 License  
This project is **open-source** under the [MIT License](LICENSE).  

---

## 💡 Acknowledgments  
Special thanks to **Zenity** for making GUI development in Bash easy! 🚀