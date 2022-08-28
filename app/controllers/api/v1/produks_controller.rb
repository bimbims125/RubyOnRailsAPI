module Api
  module V1
    class ProduksController < ApplicationController
      def index
        @produks = Produk.all
        render json: @produks
      end

      def show
        @produks = Produk.find(params[:id])
        render json: @produks
      end
      def create
        @produks = Produk.new(produks_params)

        if @produks.save
          render json: @produks, status: :created
        else
          render json: @produks.errors, status: :unprocessable_entity
        end
      end
      def update
        @produks = Produk.find(params[:id])
        if @produks.update(produks_params)
          render json: @produks
        else
          render json: @produks.errors, status: :unprocessable_entity
        end
      end
      def destroy
        @produks = Produk.find(params[:id])
        if @produks.present?
          @produks.destroy
          render json: @produks
        else
          render json: @produks.errors, status: :unprocessable_entity
        end
      end
      private
      def produks_params
        params.require(:produk).permit(:nama, :deskripsi)
      end
    end
  end
end