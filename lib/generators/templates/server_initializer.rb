# Taverna Player Server configuration

TavernaPlayer.setup do |config|

  # Taverna Server configuration information. The poll interval is in seconds
  # and sets how often the server will be polled for updates by each worker.
  # The retry interval is also in seconds and sets how long a worker will wait
  # before trying to start a run if the server is initially busy.
  config.server_address = "http://localhost:8080/taverna"
  config.server_username = "taverna"
  config.server_password = "taverna"
  config.server_poll_interval = 5
  config.server_retry_interval = 10

  # Taverna Server connection configuration.
  #config.server_connection_error_retries = 5
  #config.server_connection[:verify_peer] = true
  #config.server_connection[:ca_file] = "/etc/certs/my-cert.crt"
  #config.server_connection[:ca_path] = "/etc/certs/"
  #config.server_connection[:client_certificate] = "client-cert.crt"
  #config.server_connection[:client_password] = "P@5$w0Rd!"
  #config.server_connection[:ssl_version] = :TLSv1
  #config.server_connection[:open_timeout] = 10
  #config.server_connection[:read_timeout] = 10
end
