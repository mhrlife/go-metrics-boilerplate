# First stage: Build the application
FROM golang:1.20 AS builder

# Set the current working directory inside the container
WORKDIR /app

# Download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy source files from host and compile
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o myapp .

# Second stage: Create a minimal container with the compiled binary
FROM alpine:3.14

# Set the current working directory
WORKDIR /root/

# Copy the binary from the builder stage
COPY --from=builder /app/myapp .

# Command to run the application
CMD ["./myapp"]