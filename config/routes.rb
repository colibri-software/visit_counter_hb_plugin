
VisitCounter::Engine.routes.draw do

  get "visit_counter/show"

  get "visit_counter/update"

  match('/path', to: Proc.new do

    [200, {}, ['From rails engine!!!']]

  end)

end
