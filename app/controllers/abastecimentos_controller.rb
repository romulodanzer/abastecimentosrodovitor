class AbastecimentosController < ApplicationController
    def index
        if params[:search]
            @abastecimentos = Abastecimento.where("filial LIKE ? OR equipemento LIKE ? OR motorista LIKE ? OR hodometro LIKE ?",
                                "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%",
                                "%#{params[:search]}%").page(params[:page])
        else
            @abastecimentos = Abastecimento.all.page(params[:page])
        end
    end
  
    def create
      @refuel = Abastecimento.new(abastecimento_params)
      if @abastecimento.save
        render json: @abastecimento, status: :created
      else
        render json: @abastecimento.errors, status: :unprocessable_entity
      end
    end

    def show
      @abastecimento = Abastecimento.find(params[:id])
      respond_to do |format|
        format.html
      end
    end
    

  
    private
  
    def abastecimento_params
      params.require(:abastecimento).permit(:filial, :equipemento, :motorista, :hodometro, :foto_hodometro, :qtd, :inicial, :foto_inicial, :final, :foto_final, :motorista)
    end
  end