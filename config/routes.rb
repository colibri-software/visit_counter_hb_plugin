
VisitCounter::Engine.routes.draw do

  get '/' => 'visit_counter/visit_counter#show', as: 'show_count'

  put 'reset' => 'visit_counter/visit_counter#reset', as: 'reset_count'

end
