require 'sinatra'

before do
  @diccionario=["perro","gato"]
end


 $resultados=["","",""]

get '/' do
	erb :bienvenida
end

post '/jugar' do
	@espacio= params[:espacio]
	@letra= params[:letra]
	@errores = params[:errores]
	@posicion=params[:posicion]
	@palabra=@diccionario[@posicion.to_i]

	@i=0
	@tam=@palabra.length
	if @espacio==""
		@espacio = @palabra.gsub(/[a-z]/,"-")
	end

	if @letra != ""
		if @palabra.index(@letra)!= nil
			while @i < @tam do
				if @palabra[@i] == @letra
					@espacio[@i]=@letra
				end
				@i+=1
			end
		else
			@suma=@errores.to_i
			@suma += 1
			@errores = @suma.to_s
		end
	end
	if (@errores.to_s=="3")
		@resp="La palabra secreta era "+@palabra
		$resultados[0]=$resultados[1]
		$resultados[1]=$resultados[2]
		$resultados[2]=@resp
		redirect "/perdedor"
	end
	if (@espacio==@palabra)
		@resp="Gano con "+@errores+" errores"
		$resultados[0]=$resultados[1]
		$resultados[1]=$resultados[2]
		$resultados[2]=@resp
		redirect "/ganador"
	end 
	
	erb :jugar
end
get '/perdedor' do
erb :perdedor
end

get '/agregar_palabras' do
	erb :agregar_palabras.erb
end


post '/mensaje' do
	
end

get '/ganador' do
  erb :ganador
end

