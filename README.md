# Robot Framework Login Test Automation Project

A lightweight, robust BDD / Keyword-Driven test automation project built with **Robot Framework** and **Python** to validate authentication and API login flows.

---

## Project Structure & Architecture

```text
robot-framework/
├── tests/                   # Test suite directory (contains .robot test suites, scaleable for future test files)
├── resources/               # Shared resource directory (contains reusable .resource keywords and definitions)
├── libraries/               # Custom Python libraries directory (contains backend helpers and custom test libraries)
├── results/                 # Test execution outputs and reports (output.xml, log.html, report.html)
├── robot.toml               # Robot Framework configuration
├── pyproject.toml           # Project dependencies and metadata
└── README.md                # Project documentation
```

---

## Directory Components

### 1. Tests (`tests/`)
Houses Robot Framework test suite files (`.robot`). Designed to be modular and scalable as new feature test suites are added to the project.

### 2. Resources (`resources/`)
Contains shared Robot Framework resource files (`.resource`). Encapsulates reusable keywords, variables, and assertions that can be shared across multiple test suites.

### 3. Custom Libraries (`libraries/`)
Contains custom Python libraries that implement backend interactions, helpers, or API drivers used by test suites. Designed to scale with new modules and utilities.

### 4. Configuration (`robot.toml` & `.env`)
Defines project settings, search paths, and environment options (such as `ROBOT_OPTIONS` loaded via `python-dotenv`).

---

## Test Scenarios (Example: `login_tests.robot`)

> **Note:** The test scenarios below are provided as initial examples in `tests/login_tests.robot`. 

| Test Case | Username | Password | Expected Status | Description |
| :--- | :--- | :--- | :--- | :--- |
| **Valid Login** | `max.muster` | `Geheim123!` | `200` | Successful authentication with valid credentials |
| **Invalid Password** | `max.muster` | `Falsch999` | `401` | Unauthorized error when password is incorrect |
| **Locked User** | `locked.user` | `Geheim123!` | `403` | Forbidden access for locked user accounts |

---

## Getting Started

### Prerequisites
- Python 3.13+
- [uv](https://github.com/astral-sh/uv)

### Installation & Running Tests

1. Install dependencies using `uv`:
   ```bash
   uv sync
   ```

2. Execute all tests inside the `tests` directory (automatically loading `.env` configuration via `python-dotenv`):
   ```bash
   uv run dotenv run -- robot tests/
   ```

### Code Quality (Linting & Formatting)

To install development dependencies (including Ruff) and check code quality and formatting:
```bash
uv sync --dev
uv run ruff check .
uv run ruff format --check .
```

To automatically format your code:
```bash
uv run ruff format .
```

After execution, Robot Framework will generate test reports and logs inside `results/` (`output.xml`, `log.html`, `report.html`).
