# How to Launch and Login to Graylog Instance

## Prerequisites
- Docker and Docker Compose installed on your system.
- A terminal or command prompt.

## Steps

1. **Navigate to the Project Directory**

   Open a terminal or command prompt and navigate to the directory containing the `docker-compose.yml` and `generate_secrets.sh` files.

   ```sh
   cd c:\Users\mochtod\copilot one
   ```

2. **Generate Secrets and Update .env File**

   Run the `generate_secrets.sh` script to generate the `GRAYLOG_PASSWORD_SECRET` and `GRAYLOG_ROOT_PASSWORD_SHA2` values and update the `.env` file.

   ```sh
   chmod +x generate_secrets.sh
   ./generate_secrets.sh
   ```

3. **Start the Docker Compose Stack**

   Use Docker Compose to start the MongoDB, Elasticsearch, and Graylog services.

   ```sh
   docker-compose up
   ```

4. **Access the Graylog Web Interface**

   Open your web browser and navigate to the following URL to access the Graylog web interface:

   ```
   http://127.0.0.1:9000
   ```

5. **Login to Graylog**

   Use the username `admin` and the password you entered when running the `generate_secrets.sh` script to log in to the Graylog web interface.

## Additional Information

- For more information on configuring and using Graylog, refer to the [Graylog documentation](https://go2docs.graylog.org/current/downloading_and_installing_graylog/docker_installation.html).
