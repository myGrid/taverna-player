require "require_all"
require "coderay"
require "delayed_job_active_record"
require "jbuilder"
require 'mime/types'
require "paperclip"
require "rails_autolink"
require "t2-server"
require "taverna-t2flow"
require "tmpdir"
require "zip/zip"

# Grab everything in the taverna_player directory using the require_all gem.
require_rel "taverna_player"

module TavernaPlayer
  # Configuration without defaults
  mattr_accessor :server_address, :server_admin_password, :server_password,
    :server_admin_username, :server_username

  # This should be set to the name of the workflow model class in the main
  # application via the workflow_model_proxy method below.
  mattr_reader :workflow_proxy
  def self.workflow_model_proxy(workflow_class)
    @@workflow_proxy = ModelProxy.new(workflow_class, [:file, :title, :inputs])
    yield @@workflow_proxy if block_given?
  end

  # Setup default output render callbacks.
  mattr_reader :output_renderer
  @@output_renderer = OutputRenderer.new
  @@output_renderer.default(:cannot_inline_tp_default)
  @@output_renderer.add("text/plain", :format_text_tp_default, true)
  @@output_renderer.add("text/xml", :format_xml_tp_default)
  @@output_renderer.add("image/jpeg", :show_image_tp_default)
  @@output_renderer.add("image/png", :show_image_tp_default)
  @@output_renderer.add("image/gif", :show_image_tp_default)
  @@output_renderer.add("image/bmp", :show_image_tp_default)
  @@output_renderer.add("application/x-error", :workflow_error_tp_default)

  def self.output_renderers
    yield @@output_renderer if block_given?
  end

  # Taverna server polling interval (in seconds)
  mattr_accessor :server_poll_interval
  @@server_poll_interval = 5

  # Taverna server retry interval (in seconds)
  mattr_accessor :server_retry_interval
  @@server_retry_interval = 10

  # Taverna Server connection parameters
  mattr_accessor :server_connection
  @@server_connection = T2Server::DefaultConnectionParameters.new

  # Enable Taverna Server admin interface?
  mattr_accessor :enable_server_admin
  @@enable_server_admin = false

  # Taverna Server admin credentials
  def self.server_admin_credentials
    T2Server::HttpBasic.new(TavernaPlayer.server_admin_username,
      TavernaPlayer.server_admin_password)
  end

  # Admin namespace
  mattr_accessor :server_admin_namespace
  TavernaPlayer.server_admin_namespace = nil

  def self.player_hostname=(hostname)
    uri = URI.parse(hostname)
    scheme = uri.scheme.nil? ? "http" : uri.scheme
    host = uri.port.nil? ? uri.host : "#{uri.host}:#{uri.port}"
    host = uri.path.blank? ? host : "#{host}#{uri.path}"
    @@hostname = { :scheme => scheme, :host => host }
  end

  # Hostname of server where Taverna Player resides
  mattr_reader :hostname
  TavernaPlayer.player_hostname = "http://localhost:3000"

  # Pre run callback
  mattr_accessor :pre_run_callback
  @@pre_run_callback = nil

  # Post run callback
  mattr_accessor :post_run_callback
  @@post_run_callback = nil

  # Run cancelled callback
  mattr_accessor :run_cancelled_callback
  @@run_cancelled_callback = nil

  # Run failed callback
  mattr_accessor :run_failed_callback
  @@run_failed_callback = nil

  def self.setup
    yield self
  end

end
