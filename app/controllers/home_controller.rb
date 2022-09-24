class HomeController < ApplicationController

  def index
  end

  def uf_value
    api_url = "https://mindicador.cl/api/uf/#{(@date_today)}"
    response = HTTParty.get(api_url)
    responsetohash = JSON.parse(response.read_body)
    if responsetohash['serie'][0].nil?
      return render json: {mensaje:"Valor no existe en esa fecha"}
    else 
      @uf_value = responsetohash['serie'][0]['valor']
    end
  end

  def date_today
    @date_today = Time.now.strftime("%m-%d-%Y")
  end
end