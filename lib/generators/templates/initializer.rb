# Taverna Player configuration

TavernaPlayer.setup do |config|
  # Set this to the name of the server on which Taverna Player is running.
  config.player_hostname = "http://localhost:3000"

  # This should be set to the name of the workflow model class in the main
  # application and the listed methods should also be mapped if necessary.
  config.workflow_model_proxy("Workflow")
  #config.workflow_model_proxy("Workflow") do |proxy|
    # This is the method that returns the name of the workflow file. Your
    # model MUST provide this otherwise a workflow cannot be run.
    #proxy.file_method_name = :file

    # This is the method that returns the title of the workflow. This can be
    # left unset if your model does not have this field but if you want to
    # set a run name at the time of run creation then you will need to
    # provide one or override the new run view.
    #proxy.title_method_name = :title

    # This is a method that returns a list of descriptions of the workflow
    # inputs. Each description should be of the form:
    #  {
    #    :name => "<input_name>",
    #    :description => "<input_description>",
    #    :example => "<input_example_value>"
    #  }
    #
    # If you don't provide this method you will have to override the new run
    # view to create and initialize the inputs to a workflow.
    #proxy.inputs_method_name = :inputs
  #end

  # Taverna Server configuration information. The poll interval is in seconds
  # and sets how often the server will be polled for updates by each worker.
  # The retry interval is also in seconds and sets how long a worker will wait
  # before trying to start a run if the server is initially busy.
  config.server_address = "http://localhost:8080/taverna"
  config.server_username = "taverna"
  config.server_password = "taverna"
  config.server_poll_interval = 5
  config.server_retry_interval = 10

  # Taverna Server administration configuration information. Turn this on if
  # you want to be able to configure your Taverna Server through Taverna
  # Player. If you already have a separate namespace for administrative
  # functions set up within your portal, e.g. "admin", you can add the Taverna
  # Server configuration to that.
  config.enable_server_admin = false
  config.server_admin_namespace = nil
  config.server_admin_username = "admin"
  config.server_admin_password = "admin"

  # Taverna Server connection configuration.
  #config.server_connection[:verify_peer] = true
  #config.server_connection[:ca_file] = "/etc/certs/my-cert.crt"
  #config.server_connection[:ca_path] = "/etc/certs/"
  #config.server_connection[:client_certificate] = "client-cert.crt"
  #config.server_connection[:client_password] = "P@5$w0Rd!"
  #config.server_connection[:ssl_version] = :TLSv1
  #config.server_connection[:open_timeout] = 10
  #config.server_connection[:read_timeout] = 10

  # Callbacks to be run at various points during a workflow run. These can be
  # defined as Proc objects or as methods and referenced by name.
  #
  # Be careful! If a callback fails then the worker running the job will fail!
  #
  # Add callbacks in this initializer or define them elsewhere and require the
  # file as usual (if they are not pulled in by some other code). You can
  # create example stub callbacks using:
  #   "rails generate taverna_player:callbacks"
  # which will put them in "lib/taverna_player_callbacks.rb".
  #require "taverna_player_callbacks"

  # The pre-run callback is called before the run has started (before Taverna
  # Server is contacted, in fact).
  # It takes the run model object as its parameter.
  #config.pre_run_callback = Proc.new { |run| puts "Starting: #{run.name}" }
  #config.pre_run_callback = "player_pre_run_callback"
  #config.pre_run_callback = :player_pre_run_callback

  # The post-run callback is called after the run has completed normally.
  # It takes the run model object as its parameter.
  #config.post_run_callback = Proc.new { |run| puts "Finished: #{run.name}" }
  #config.post_run_callback = "player_post_run_callback"
  #config.post_run_callback = :player_post_run_callback

  # The run-cancelled callback is called if the run is cancelled by the user.
  # It takes the run model object as its parameter.
  #config.run_cancelled_callback = Proc.new { |run| puts "Cancelled: #{run.name}" }
  #config.run_cancelled_callback = "player_run_cancelled_callback"
  #config.run_cancelled_callback = :player_run_cancelled_callback

  # The run-failed callback is called if the run fails for any reason.
  # It takes the run model object as its parameter.
  #config.run_failed_callback = Proc.new { |run| puts "Failed: #{run.name}" }
  #config.run_failed_callback = "player_run_failed_callback"
  #config.run_failed_callback = :player_run_failed_callback

  # Callbacks to be run to render various types of workflow output. These can
  # be defined as Proc objects or as methods and referenced by name.
  #
  # Be careful! If a callback fails then users will see an Internal Server
  # Error (HTTP status code 500) instead of their run outputs!
  #
  # Add callbacks in this initializer or define them elsewhere and require the
  # file as usual (if they are not pulled in by some other code). You can
  # create example stub callbacks using:
  #   "rails generate taverna_player:renderers"
  # which will put them in "lib/taverna_player_renderers.rb".
  #require "taverna_player_renderers"

  # Renderers for each type of output (referenced by MIME type) must then be
  # registered. All the renderers shown below are supplied as defaults.
  #config.output_renderers do |renderers|
    # Set a default renderer for if there is a workflow type that browsers
    # can't otherwise handle.
    #renderers.default(:cannot_inline)

    # You can set a renderer to also be a default for the whole media-type. In
    # this case the below renderer is to be used for ALL text/* types that
    # aren't otherwise registered.
    #renderers.add("text/plain", :format_text, true)

    # This renderer overrides the default text/* renderer for text/xml outputs.
    #renderers.add("text/xml", :format_xml)

    # Browsers can't show all image types so just register very common ones.
    #renderers.add("image/jpeg", :show_image)
    #renderers.add("image/png", :show_image)
    #renderers.add("image/gif", :show_image)
    #renderers.add("image/bmp", :show_image)

    # This is the workflow error type and you should have a special renderer
    # for it.
    #renderers.add("application/x-error", :workflow_error)
  #end
end

# Example workflow run callbacks defined in the initializer.

#def player_pre_run_callback(run)
#  puts "Starting: #{run.name}"
#end

#def player_post_run_callback(run)
#  puts "Finished: #{run.name}"
#end

#def player_run_cancelled_callback(run)
#  puts "Cancelled: #{run.name}"
#end
