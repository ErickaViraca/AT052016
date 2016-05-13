# and this the second script, from where we execute the requires
#require <C:\Users\Administrator\Documents\BDT\PracticesBDT>
require_relative "module.rb"

class Sample
	include Saludos
	include Despedidas

end


samp = Sample.new
samp.saludo1
samp.saludo2
samp.desp1
samp.desp2
