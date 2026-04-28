# Local AI Stack

As it becomes exponentially easier to build and run your own services, this project is a move toward **controlling your own infrastructure**. Instead of renting other people's hardware and data centers for basic inference, this stack allows you to choose your own adventure: **Ownership.**

Every prompt sent to a cloud model is a micro-transaction and a dependency. By leveraging Apple Silicon and native frameworks, this repository provides a private, free, and repeatable environment where your "token budget" is limited only by your own hardware.

## Why This Matters
* **Economic Freedom:** Exit the rental economy of micro-transactions for every model interaction.
* **Data Privacy:** Your information never leaves your local machine.
* **Architectural Decoupling:** This isn't just an app; it's a modular system that replicates production-grade AI gateways.

## The Architecture
The system is built to be modular and resilient:
* **The Engine (Native Ollama):** Runs natively on macOS to leverage the full speed of Apple's Unified Memory and GPU.
* **The Control Plane (LiteLLM):** An OpenAI-compatible gateway that provides a single, programmatic entry point for your models.
* **The UI (Open WebUI):** A containerized interface that stays local to your browser.

## Quick Start (One-Command Setup)
If you have **Homebrew** and **Apple Silicon**, you can initialize your entire local laboratory with one command:

```bash
curl -sSL [https://raw.githubusercontent.com/](https://raw.githubusercontent.com/)[YOUR-USERNAME]/local-ai-stack/main/setup.sh | bash
```

This script will verify your environment, install necessary dependencies (Ollama/OrbStack), pull the Gemma 4 model, and orchestrate the platform via Docker.

##  Programmatic Control
Once the stack is running, you can interact with it at:

Web Interface: http://localhost:3000 

API Gateway: http://localhost:4000/v1 

You can change models or update guardrails by simply editing litellm-config.yaml and running make setup. There is no "manual duct-taping" required; the system is fully defined as code.

## License
This project is licensed under the MIT License. It is open-source and intended for engineers who prefer to build and own their tools rather than rent them.