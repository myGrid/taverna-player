var search_data = {"index":{"searchIndex":["tavernaplayer","applicationhelper","outputrenderer","run","runport","input","output","servicecredential","add()","cancelled?()","complete?()","create_time()","default()","description()","display_name()","embedded?()","failed?()","finish_time()","finished?()","has_parent?()","login()","metadata()","name()","name()","new_embedded_run_path()","new_embedded_run_url()","output_renderers()","render()","root_ancestor()","running?()","setup()","start_time()","state()","type_default()","uri()","user_model_proxy=()","value()","value_preview()","workflow_model_proxy()","changes","licence","readme"],"longSearchIndex":["tavernaplayer","tavernaplayer::applicationhelper","tavernaplayer::outputrenderer","tavernaplayer::run","tavernaplayer::runport","tavernaplayer::runport::input","tavernaplayer::runport::output","tavernaplayer::servicecredential","tavernaplayer::outputrenderer#add()","tavernaplayer::run#cancelled?()","tavernaplayer::run#complete?()","tavernaplayer::run#create_time()","tavernaplayer::outputrenderer#default()","tavernaplayer::servicecredential#description()","tavernaplayer::runport#display_name()","tavernaplayer::run#embedded?()","tavernaplayer::run#failed?()","tavernaplayer::run#finish_time()","tavernaplayer::run#finished?()","tavernaplayer::run#has_parent?()","tavernaplayer::servicecredential#login()","tavernaplayer::runport#metadata()","tavernaplayer::run#name()","tavernaplayer::servicecredential#name()","tavernaplayer::applicationhelper#new_embedded_run_path()","tavernaplayer::applicationhelper#new_embedded_run_url()","tavernaplayer::output_renderers()","tavernaplayer::outputrenderer#render()","tavernaplayer::run#root_ancestor()","tavernaplayer::run#running?()","tavernaplayer::setup()","tavernaplayer::run#start_time()","tavernaplayer::run#state()","tavernaplayer::outputrenderer#type_default()","tavernaplayer::servicecredential#uri()","tavernaplayer::user_model_proxy=()","tavernaplayer::runport#value()","tavernaplayer::runport#value_preview()","tavernaplayer::workflow_model_proxy()","","",""],"info":[["TavernaPlayer","","TavernaPlayer.html","","<p>This module serves as the configuration point of Taverna Player. Examples\nof all configuration options …\n"],["TavernaPlayer::ApplicationHelper","","TavernaPlayer/ApplicationHelper.html","","<p>These helpers will be available in the main application when you use\nTaverna Player.\n"],["TavernaPlayer::OutputRenderer","","TavernaPlayer/OutputRenderer.html","","<p>This class manages the rendering of many different output types that could\nbe produced by a workflow. …\n"],["TavernaPlayer::Run","","TavernaPlayer/Run.html","","<p>This class represents a workflow run. It may be yet to run, running or\nfinished. All inputs and outputs …\n"],["TavernaPlayer::RunPort","","TavernaPlayer/RunPort.html","","<p>This class is the superclass of the input and output port types\nRunPort::Input and RunPort::Output, respectively. …\n"],["TavernaPlayer::RunPort::Input","","TavernaPlayer/RunPort/Input.html","","<p>This class represents a workflow input port. All functionality is provided\nby the RunPort superclass. …\n"],["TavernaPlayer::RunPort::Output","","TavernaPlayer/RunPort/Output.html","","<p>This class represents a workflow output port. All functionality is provided\nby the RunPort superclass. …\n"],["TavernaPlayer::ServiceCredential","","TavernaPlayer/ServiceCredential.html","","<p>This class represents a credential for authentication to a service during a\nworkflow run.\n"],["add","TavernaPlayer::OutputRenderer","TavernaPlayer/OutputRenderer.html#method-i-add","(mimetype, method, default = false)","<p>Add a renderer method for the specified MIME type. If you would like the\nrenderer to be the default for …\n"],["cancelled?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-cancelled-3F","","<p>Has this run been cancelled?\n"],["complete?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-complete-3F","","<p>Is this run complete? If a run is finished or cancelled or failed then it\nis complete.\n"],["create_time","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-create_time","","<p>The time this run was created on the Taverna Server.\n"],["default","TavernaPlayer::OutputRenderer","TavernaPlayer/OutputRenderer.html#method-i-default","(method)","<p>Set a default renderer for any MIME type not specifically set. This could\nbe used to supply a piece of …\n"],["description","TavernaPlayer::ServiceCredential","TavernaPlayer/ServiceCredential.html#method-i-description","","<p>The description of the service or credential.\n"],["display_name","TavernaPlayer::RunPort","TavernaPlayer/RunPort.html#method-i-display_name","","<p>Convert this port’s name to a more presentable form. In practice this means\nconverting underscores (_) …\n"],["embedded?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-embedded-3F","","<p>Is this run an embedded run? This helps determine if a run should be\ntreated differently, e.g. in the …\n"],["failed?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-failed-3F","","<p>Did this run finish abnormally or with an error?\n"],["finish_time","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-finish_time","","<p>The time this run finished running on Taverna Server.\n"],["finished?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-finished-3F","","<p>Has this run finished normally?\n"],["has_parent?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-has_parent-3F","","<p>A run will have a parent if it is a child run as part of a sweep.\n"],["login","TavernaPlayer::ServiceCredential","TavernaPlayer/ServiceCredential.html#method-i-login","","<p>The login name (or user name) used to log in to the service.\n"],["metadata","TavernaPlayer::RunPort","TavernaPlayer/RunPort.html#method-i-metadata","","<p>Get the size and type metadata for this port in a Hash. For a list it might\nlook like this:\n\n<pre>{\n  :size ...</pre>\n"],["name","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-name","","<p>The name (mnemonic) of this run.\n"],["name","TavernaPlayer::ServiceCredential","TavernaPlayer/ServiceCredential.html#method-i-name","","<p>The name of the service.\n"],["new_embedded_run_path","TavernaPlayer::ApplicationHelper","TavernaPlayer/ApplicationHelper.html#method-i-new_embedded_run_path","(id_or_model)","<p>Given a workflow instance, or workflow id, this method returns the URI path\nto a new embedded run of …\n"],["new_embedded_run_url","TavernaPlayer::ApplicationHelper","TavernaPlayer/ApplicationHelper.html#method-i-new_embedded_run_url","(id_or_model)","<p>Given a workflow instance, or workflow id, this method returns the full URI\nto a new embedded run of …\n"],["output_renderers","TavernaPlayer","TavernaPlayer.html#method-c-output_renderers","()","<p>Set up the renderers for each MIME type that you want to be able to show in\nthe browser. In most cases …\n"],["render","TavernaPlayer::OutputRenderer","TavernaPlayer/OutputRenderer.html#method-i-render","(content, mimetype)","<p>This is the method that calls the correct renderer for the given content\nwith the given MIME type and …\n"],["root_ancestor","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-root_ancestor","","<p>Gets the ultimate ancestor of this run, which may not be its immediate\nparent.\n"],["running?","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-running-3F","","<p>Is this run still running on Taverna Server?\n"],["setup","TavernaPlayer","TavernaPlayer.html#method-c-setup","()","<p>Yield this configuration class so that Taverna Player can be set up.\n<p>See the taverna_player initializer …\n"],["start_time","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-start_time","","<p>The time this run started running on the Taverna Server.\n"],["state","TavernaPlayer::Run","TavernaPlayer/Run.html#method-i-state","","<p>The state of this run. Possible states are :pending, :initialized,\n:running, :finished, :cancelled or …\n"],["type_default","TavernaPlayer::OutputRenderer","TavernaPlayer/OutputRenderer.html#method-i-type_default","(media_type, method)","<p>This is another way of setting the default renderer method for a whole\nmedia type (see the add method …\n"],["uri","TavernaPlayer::ServiceCredential","TavernaPlayer/ServiceCredential.html#method-i-uri","","<p>The URI of the service, returned as a string.\n"],["user_model_proxy=","TavernaPlayer","TavernaPlayer.html#method-c-user_model_proxy-3D","(user_class)","<p>Set up a proxy to the main application’s user model if it has one. The\nclass name should be supplied …\n"],["value","TavernaPlayer::RunPort","TavernaPlayer/RunPort.html#method-i-value","","<p>Return the value held in this port if there is one.\n"],["value_preview","TavernaPlayer::RunPort","TavernaPlayer/RunPort.html#method-i-value_preview","","<p>Show up to the first 256 characters of the port’s value. This returns nil\nif the port has a file instead …\n"],["workflow_model_proxy","TavernaPlayer","TavernaPlayer.html#method-c-workflow_model_proxy","(workflow_class)","<p>Set up a proxy to the main application’s workflow model. The class name\nshould be supplied as a string, …\n"],["CHANGES","","CHANGES_rdoc.html","","<p>Changes log for Taverna Player\n<p>Version 0.2.1\n<p>Fix classname typo in port model templates.\n"],["LICENCE","","LICENCE_rdoc.html","","<p>Copyright © 2013 The University of Manchester, UK.\n<p>All rights reserved.\n<p>Redistribution and use in source …\n"],["README","","README_rdoc.html","","<p>Taverna Player\n<p>Authors &mdash; Robert Haines\n<p>Contact &mdash; support@mygrid.org.uk\n"]]}}