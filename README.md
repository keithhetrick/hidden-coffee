# 🧅 Hidden Coffee ☕

A minimalist, educational Tor Hidden Service built using Docker. It serves a static "Hidden Coffee" HTML site accessible only via the Tor network. Great for learning how `.onion` services work, without publishing sensitive data.

---

## 📸 Preview

<img width="1721" alt="Screen Shot 2025-06-01 at 9 30 30 PM" src="https://github.com/user-attachments/assets/4329c162-88d7-42e9-a07d-afea5fcb82b2" /> <!-- Optional if you want to add a screenshot -->

---

## 🔧 Features

- Fully static HTML site served via Nginx
- Runs as a hidden service over Tor in Docker
- No need for a domain or HTTPS — uses a `.onion` address
- Completely self-contained, no tracking or analytics
- No `.env` file required

---

## 🛠️ Requirements

- [Docker](https://www.docker.com/)
- [Tor Browser](https://www.torproject.org/)

---

## 🚀 Getting Started

### 1. Clone this repo

```bash
git clone https://github.com/keithhetrick/hidden-coffee.git
cd hidden-coffee
```

### 2. Build Docker Image

From the root of the project directory, run:

```bash
docker build -t hidden-coffee .
```

### 3. Run Docker Container

```bash
docker run -d --name hidden-coffee hidden-coffee
```

This will:
- Build the image
- Start a container running Nginx + Tor
- Create a hidden service on your machine

---

## 🌐 Get Your `.onion` Address

### 4. Once the container is running, open another terminal and run:

```bash
docker exec hidden-coffee-tor cat /var/lib/tor/hidden_service/hostname
```

You’ll see an address like:

```text
zgcypcvt3apooici2bixzq7zatg5nyqny2omg4drdcdui4il5y6dqvad.onion
```

> 📌 **Note**: This is an example .onion address for demo purposes only. Run the container to generate your own address.

---

### 5. Open the `.onion` address in [Tor Browser](https://www.torproject.org/)

Paste the `.onion` address into the Tor Browser address bar — and voilà: Hidden Coffee is served. ☕

---

## 💡 Notes

- No sensitive info (like `.env` files or private keys) is committed.
- This setup uses a **non-persistent** `.onion` address by default.
- The container runs in the background and serves the site only over Tor.
- Tor sites are slower than clearnet — keep it simple.

---

## 🛑 Stop the Service

```bash
docker-compose down
```

This will stop and remove the container. If you’re not using persistence, the `.onion` address will change the next time you run it.

---

## 🧪 Future Ideas

- Brew counter using localStorage or file-based backend
- Persistent `.onion` address using Docker volumes
- Hosting on a Raspberry Pi or similar device
- Add themed styles or multiple pages
- Docker Hub deploy / GitHub Actions

---

## 🧠 Educational Purpose Only

This project is for **educational and lawful** use only. It demonstrates how Tor hidden services work in a safe, offline, self-hosted context.

---

## ☕ Inspired By

- Tor Project
- Static web hacking
- Late-night coffee sessions

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
