class CreateAbastecimentos < ActiveRecord::Migration[5.1]
  def change
    create_table :abastecimentos do |t|
      t.string :filial
      t.string :equipemento
      t.string :motorista
      t.integer :hodometro
      t.string :foto_hodometro
      t.decimal :qtd
      t.integer :inicial
      t.string :foto_inicial
      t.decimal :final
      t.string :foto_final
      t.string :motorista

      t.timestamps
    end
  end
end
