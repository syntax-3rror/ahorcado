require 'sinatra'

$diccionario=["perro","gato","loro","vaca"]
$palabra=""
$resultados=["","",""]

get '/' do
	erb :bienvenida
end

post '/jugar' do
	@espacio= params[:espacio]
	@letra= params[:letra]
	@errores = params[:errores]
	@posicion=params[:posicion]
	@palabra=$diccionario[@posicion.to_i]


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
		$palabra=@palabra
		agregar_resultado(@resp)
		 
		redirect "/perdedor"
	end
	if (@espacio==@palabra)
		@resp="Gano con "+@errores+" errores"
		agregar_resultado(@resp)
		redirect "/ganador"
	end 
	
	
	erb :jugar
end


get '/perdedor' do
	erb :perdedor
end


post '/agregar_palabras' do
	@palabra=params[:palabra]
	@tam=($diccionario.length)-1
	@ultima=$diccionario[@tam-1]
	if @palabra!=""
		@tam=@tam+1
		$diccionario[@tam]=@palabra
	end

	erb :agregar_palabras
end


post '/mensaje' do
	
end


get '/ganador' do
  erb :ganador
end


def agregar_resultado(respuesta)
	$resultados[0]=$resultados[1]
	$resultados[1]=$resultados[2]
	$resultados[2]=respuesta	
end
