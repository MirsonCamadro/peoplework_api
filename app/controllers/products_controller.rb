class ProductsController < ApplicationController
    def search
        # guardamos la query
        query = params[:query]
        # evaluo si es un id o si tiene mas de 3 caracteres para realizar la busqueda en branch o description
        if query.to_i != 0
            products = Product.where(id: query.to_i)
        elsif query.length > 3
            products = Product.where("description LIKE ? OR branch LIKE ?", "%#{query}%", "%#{query}%" )
            if query.downcase == query.downcase.reverse
                products.map{|product| product.price *= 0.5}
            end    
        else
            products = []
        end
    
        #comprobando si es un palidromo y si lo es aplicar el descuento al price
   
        render json: products
    end

end
