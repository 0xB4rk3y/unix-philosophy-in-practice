# 🧠 Unix Philosophy in Practice 

Welcome! This repo is a small side project where I explore and apply the timeless principles of the Unix philosophy — one script at a time.

Each directory in this repo contains a minimal shell script that focuses on a single Unix principle. The goal isn't to build something huge, but rather to understand **why** Unix tools are so effective — and how that mindset leads to better code.

---

## 📌 Why this project?

We use tools like `grep`, `cat`, `ls`, or `find` every day, but rarely think about **why** they work so well together. It's not just about functionality it's about a design philosophy that's been around for decades.

This project is my attempt to:
- Practice writing small, composable scripts.
- Revisit core Unix principles by applying them.
- Build a reference for myself (and maybe others too) to stay grounded in simplicity.

---
> **"Unix is simple. It just takes a genius to understand its simplicity."**  
> — Dennis Ritchie
---

## 🧪 What's inside?

## 🧠 Principles Demonstrated

| Conceptual Principle                    | Directory                                              | Practical Focus & Implementation Details                                  |
|----------------------------------------|--------------------------------------------------------|---------------------------------------------------------------------------|
| Functional Cohesion                    | [01_do-one-thing-well/](./01_do-one-thing-well/)       | A self-contained log cleaner that adheres to single-responsibility design |
| File Abstraction as System Interface   | [02_everything-is-a-file/](./02_everything-is-a-file/) | Uses `/proc` and file descriptors to access runtime system data           |
| Minimalism in Tooling                  | [03_small-is-beautiful/](./03_small-is-beautiful/)     | A compact parser demonstrating low-complexity, high-utility scripting     |
| Composability Through Pipes            | [04_build-on-tools/](./04_build-on-tools/)             | Demonstrates modular tool chaining via standard I/O redirection           |
| Fail-Safe Defaults & Output Discipline | [05_silence-is-golden/](./05_silence-is-golden/)        | Emphasizes non-verbosity and error-driven output as a UX principle        |



More coming soon.

---

## 🚀 Getting started

You just need a Bash shell (v4+ ideally) and a Unix-like environment (Linux, macOS, WSL, etc.).

To try one out:

```bash
cd 01_do-one-thing-well/
chmod +x log_cleaner.sh
./log_cleaner.sh /path/to/logs
