
VisitCounter::Engine.routes.draw do

  match('/path', to: Proc.new do

    [200, {}, ['From rails engine!!!']]

  end)

end
