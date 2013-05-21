
VisitCounterHBPlugin::Engine.routes.draw do

  get '/' => 'visit_counter_hb_plugin/visit_counter#show', as: 'show_count'

  put 'reset' => 'visit_counter_hb_plugin/visit_counter#reset', as: 'reset_count'

end
