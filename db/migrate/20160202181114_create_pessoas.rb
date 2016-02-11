class CreatePessoas < ActiveRecord::Migration
  def change
    create_table  :pessoas do |t|
      t.string    :nome_completo
      t.string    :alcunha
      t.date      :data_nascimento
      t.string    :nome_mae
      t.string    :nome_pai
      t.text      :endereco
      t.string    :cidade
      t.string    :estado
      t.string    :zona
      t.string    :pais
      t.text      :observacao_1
      t.text      :tatuagem_descricao
      t.string    :identidade
      t.float     :cpf
      t.text      :pratica_criminal
      t.string    :mandado_prisao
      t.text      :condenacao
      t.string    :sexo
      t.float     :altura
      t.string    :cor_do_olho
      t.string    :cor_cabelo
      t.text      :marca_sinal
      t.text      :comp_fisica
      t.text      :comparsa

      t.timestamps null: false
    end
  end
end
  