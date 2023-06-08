class ApplicationController < Sinatra::Base 

    set :default_content_type, 'application/json'

    #fetch
    get '/' do 
        "hello sinatra"
    end

    #fetch all products
    get '/products' do
        products = Product.all 
        products.to_json
    end

    #fetch a specific product
    get '/products/:id' do 
        product = Product.find(params[:id])
        product.to_json
    end

    post '/products' do 
        product = Product.create(name: params[:name], 
            desc: params[:desc], 
            amount: params[:amount], 
            image: params[:image])
        product.to_json
    end


    delete '/products/:id' do
        product = Product.find(params[:id])
        product.destroy
        product.to_json
    end



end
