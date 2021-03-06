class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /pessoas
  # GET /pessoas.json
  def index
    if params[:search] 
      #@soma =  Pessoa.search_errado(params[:search])
      @pessoas = Pessoa.search_nome(params[:search]).paginate(:page => params[:page], :per_page => 6)
    else 
      @pessoas = Pessoa.paginate(:page => params[:page], :per_page => 6)
    end
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    @pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: 'Criado com Sucesso.' }
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  # PATCH/PUT /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: 'Dados Atualizados com Sucesso.' }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to pessoas_url, notice: 'Dados deletados com Sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.require(:pessoa).permit(:nome_completo, :alcunha, :idade, :nome_mae,  :data_nascimento,
        :nome_pai,  :endereco, :cidade, :zona, :estado, :pais, :observacao_1, :tatuagem_descricao, :identidade, :cpf, :pratica_criminal,  :mandado_prisao, :condenacao, :sexo, 
        :altura, :cor_do_olho, :cor_cabelo, :com_fisica, :marca_sinal, :comparsa, imagems_files: [])
    end
end
