# 🎮 Godot 4.x 2D Game Development Mastery

Welcome to the repository of my 2D Game Development project built using the Godot Engine (v4.x) and GDScript. This project tracks my step-by-step journey of building solid, frame-rate independent 2D game mechanics from scratch, broken down into two comprehensive phases.

---

## 🚀 Detailed Project Journey & Milestones

### 📦 Phase 1: Foundations & Architecture (Parts 1 - 10)

- **Part 1:** Godot Engine 4.x environment installation and workspace configuration.
- **Part 2:** Project initialization and understanding the core 2D Scene Tree concept.
- **Part 3:** Creation of the Root Node (`Node2D`) and setting up the basic game window hierarchy.
- **Part 4:** Importing static assets, configuring textures, and working with the FileSystem.
- **Part 5:** Understanding the 2D coordinate system ($X$ and $Y$ axes) and node positions.
- **Part 6:** Attaching the first GDScript and learning basic scripting syntax.
- **Part 7:** Utilizing `_ready()` and `_process()` functions for game loop control.
- **Part 8:** Learning variables, static typing (e.g., `float`, `Vector2`), and local vs global scope.
- **Part 9:** Implementing basic input actions in Godot Project Settings for custom mapping.
- **Part 10:** Setting up the project structure for smooth Git version control management.

### 🏃 Phase 2: Advanced Movement & Physics Engine (Parts 11 - 20)

- **Part 11:** Introduction to Input Polling using `Input.is_action_pressed` for dynamic response.
- **Part 12:** Implementing basic pixel-based movement mapping for WASD/Arrow keys.
- **Part 13:** Solving the diagonal fast-travel bug using Vector mathematics (`.normalized()`).
- **Part 14:** Upgrading the system from a simple node to a dedicated `CharacterBody2D` physics node.
- **Part 15:** Learning frame-rate independence by understanding the `_physics_process(delta)` loop.
- **Part 16:** Implementing the native `move_and_slide()` function to handle engine physics velocity.
- **Part 17:** Integrating character visuals via the `Sprite2D` node using the `@onready` keyword injection.
- **Part 18:** Fetching dynamic viewport rect sizes to adapt to changing game window dimensions.
- **Part 19:** Building a strict mathematical boundary guard-rail using the `clamp()` function.
- **Part 20:** Implementing conditional code logic to dynamically mirror sprites (`flip_h`) based on real-time velocity.

---

## 🛠️ Tech Stack & Toolkit

- **Engine:** Godot Engine 4.x (GDScript)
- **IDE/Editor:** VS Code & Godot Native Editor
- **Version Control:** Git & GitHub

---

## 🎮 How to Setup and Run

1. **Clone the repository:**

```bash
   git clone [https://github.com/YOUR_USERNAME/YOUR_2D_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_2D_REPO_NAME.git)
```
