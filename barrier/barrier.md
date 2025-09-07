# Barrier Setup Guide

This guide explains how to **share a single keyboard and mouse** between two Linux machines using `Barrier`, and make it **auto-connect at startup**.

---

## 1. Install Barrier

On **both machines**:

```bash
sudo apt update
sudo apt install barrier
```

---

## 2. Choose Server & Client

- **Server**: The machine with the **physical keyboard and mouse**.
- **Client**: The machine you want to control remotely.

---

## 3. Initial Setup (GUI)

1. Launch Barrier on both machines:

   ```bash
   barrier
   ```

2. On the **server**:

   - Select **Server Mode**.
   - In the layout grid, drag and position a screen for your client.
   - Make sure the **screen name** matches the client’s hostname (case-sensitive).

3. On the **client**:

   - Select **Client Mode**.
   - Enter the **server’s IP address**.

4. **Disable SSL** on both:

   - Go to **Edit → Settings** → uncheck **Enable SSL**.

5. Click **Start** on both machines.
6. Test moving your mouse across screens — clipboard sharing works automatically.

---

## 4. Save Server Configuration

On the **server**:

1. In Barrier, go to **File → Save Configuration**.
2. Save it as:

   ```bash
   ~/.barrier.conf
   ```

---

## 5. Create Autostart Entries

### Server

Create a `.desktop` entry:

```bash
mkdir -p ~/.config/autostart
nano ~/.config/autostart/barrier-server.desktop
```

Paste:

```ini
[Desktop Entry]
Type=Application
Name=Barrier Server
Exec=barriers --config /home/$USER/.barrier.conf --no-daemon --disable-crypto
X-GNOME-Autostart-enabled=true
```

---

### Client

Create a `.desktop` entry:

```bash
mkdir -p ~/.config/autostart
nano ~/.config/autostart/barrier-client.desktop
```

Paste (replace `192.168.1.50` with your server’s IP):

```ini
[Desktop Entry]
Type=Application
Name=Barrier Client
Exec=barrierc --no-daemon --disable-crypto 192.168.1.50
X-GNOME-Autostart-enabled=true
```

---

## 6. Set Static IP (Recommended)

Ensure the server’s IP address doesn’t change:

```bash
nm-connection-editor
```

- Edit your network connection.
- Go to **IPv4 Settings**.
- Set to **Manual** and assign an IP (e.g., `192.168.1.50`).

---

## 7. Test Setup

1. Reboot both machines.
2. Barrier should start automatically and connect without GUI interaction.

---

## 8. Troubleshooting

- **Ping Test**:

  ```bash
  ping -c 4 192.168.1.50
  ```

  Confirms both devices are on the same network.

- **Firewall**:
  Allow Barrier’s default port:

  ```bash
  sudo ufw allow 24800/tcp
  ```

- **Reset Config**:

  ```bash
  rm -rf ~/.barrier ~/.local/share/barrier/SSL
  ```

---

## Summary

- Server runs:

  ```bash
  barriers --config ~/.barrier.conf --no-daemon --disable-crypto
  ```

- Client runs:

  ```bash
  barrierc --no-daemon --disable-crypto <SERVER_IP>
  ```

- Autostart ensures hands-free connection.

---

🎉 Now you have a **seamless multi-machine setup** — one mouse, one keyboard, two Linux PCs!
