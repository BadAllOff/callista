class CreateJumbotrons < ActiveRecord::Migration[5.0]
  def change
    create_table :jumbotrons do |t|
      t.string :head_text, default: 'Marketing stuff!'
      t.string :lead_text, default: 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.'
      t.string :button_text, default: 'Get started today'
      t.string :btn_color, default: 'blue'

      t.timestamps
    end
  end
end
