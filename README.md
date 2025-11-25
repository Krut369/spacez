# **Flutter Task – SpaceZ Coupons & Booking UI**

A Flutter application demonstrating a clean, modern UI for a **booking app**, featuring:

* Coupon listing
* Payment offers
* Discount details
* Bottom booking bar with pricing and CTA

This project serves as a strong example of building **responsive mobile UI** in Flutter using layouts, custom widgets, and reusable components.

---

## 🚀 **Features**

### 🟫 Coupon Cards

* Displays coupon code, discount percentage, and conditions
* “Apply” action button
* “Read more” expandable section

### 💳 Payment Offers

* Same layout style as coupons
* Organized under a separate section

### 📱 Responsive UI

* Smooth scrolling
* Adaptive layout for different screen sizes
* Clean spacing and typography

### 🔽 Bottom Booking Bar

* Original and discounted price
* Total price for selected nights
* CTA button: **Reserve**

---

## 📸 **App Preview**

<img width="461" height="912" alt="image" src="https://github.com/user-attachments/assets/eb875f7e-1dc9-4806-9c4a-db65567e9d87" />


---

## 🛠️ **Tech Stack**

* **Flutter** (Stable channel)
* **Dart**
* Built using:

  * `Column`, `Row`, `ListView`
  * `Container` for card layouts
  * `InkWell` for interactive buttons
  * `BottomAppBar` / custom bottom sheet for price bar

---

## 📂 Folder Structure

```
lib/
 ├── main.dart
 ├── screens/
     └── coupons_screen.dart
```

---

## ▶️ **Getting Started**

### 1. Clone the repository

```bash
git clone git@github.com:Krut369/spacez.git
cd flutter_task
```

### 2. Get dependencies

```bash
flutter pub get
```

### 3. Run the app

```bash
flutter run
```

---

## 🧪 **How It Works**

### Coupon Card

Each coupon card displays:

* Amount (e.g., ₹6900)
* Coupon name (e.g., LONGSTAY)
* Discount details (15% for 5+ days, 20% for 30+ days)
* Apply button
* “Read more” expands on click

### Booking Bar

Shows:

* Actual vs discounted price
* Final price for selected number of nights
* Reserve button

---

## 🚀 **Future Enhancements (Optional)**

* API integration
* Dynamic data models
* Animations for expand/collapse
* Light/Dark themes
* Localization (multi-language support)

---

## 📄 License

This project is open-source and free to use for learning or UI inspiration.

---
