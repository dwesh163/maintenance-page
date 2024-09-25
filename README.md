# Service Unavailable

This [docker](https://hub.docker.com/r/dwesh163/maintenance-page) application return a **503 Service Unavailable** webpage.
![Image](image.png)

## Installation

1. Clone the repository:
    ```bash
     git clone https://github.com/dwesh163/maintenance-page.git
     cd maintenance-page
    ```
2. Build the Docker image:
    ```bash
    docker build -t maintenance-page .
    ```

## Usage

Run the application:

```bash
docker run -d -p 8080:8080 dwesh163/maintenance-page
```

Access it at: http://localhost:8080
