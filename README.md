# 🚀 Project Wine-Bridge: Windows Micro-Apps on Serverless Cloud

[![Hugging Face Space](https://shields.io)](https://huggingface.co/spaces/R3dparrot1/wine_cloud)
[![License: MIT](https://shields.io)](https://opensource.org)

## 🌟 Overzicht
Dit project demonstreert een innovatieve methode om **Legacy Windows-applicaties (.exe)** te draaien binnen een **Docker-container** op serverless infrastructuur (Hugging Face Spaces). Door gebruik te maken van een custom Wine-architectuur en een headless noVNC-interface, maken we het mogelijk om Windows-tools te draaien in een gratis Linux-cloudomgeving.

### 📸 Demo
<p align="center">
  <img src="screenshot.png" width="800" alt="Windows App running on Hugging Face">
  <br>
  <em>De interface: Een Windows-omgeving die volledig in de browser draait via Hugging Face.</em>
</p>

## 🛠️ Technische Stack
- **OS:** Ubuntu 22.04 LTS (Dockerized)
- **Emulatie:** Wine (Wine Is Not an Emulator) voor Win32/Win64 support.
- **Display:** Xvfb & VNC (Virtual Network Computing) voor headless GUI-rendering.
- **Web-Interface:** noVNC & Websockify voor een naadloze browser-ervaring op poort 7860.
- **Desktop:** Lightweight XFCE4 desktop omgeving.

## 🎯 Waarom dit project?
Het doel is om een brug te slaan tussen oude Windows-automatiseringstools en moderne AI-gebaseerde cloudworkflows. 

**Mijn ultieme visie:**
Het integreren van **Claude AI** om legacy Windows-software aan te sturen via natuurlijke taal. Door deze container-bridge te bouwen, leg ik de fundering voor AI-gestuurde systeemadministratie op platforms zoals GitHub en Hugging Face.

## 🚀 Zelf Draaien
1. Fork deze repository.
2. Maak een nieuwe **Docker Space** aan op [Hugging Face](https://huggingface.co).
3. Verbind je GitHub repo.
4. Open de `vnc.html` in je Space-browser en gebruik wachtwoord: `password`.

---
*Opmerking: Dit project is momenteel in actieve ontwikkeling. Ik experimenteer met de grenzen van gratis cloud-hardware voor geavanceerde AI-integraties.*

<img width="1919" height="860" alt="Schermafbeelding 2026-04-17 015935" src="https://github.com/user-attachments/assets/67343b97-f3d2-4860-9a27-7060368c0438" />
