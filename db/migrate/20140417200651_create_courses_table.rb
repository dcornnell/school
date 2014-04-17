class CreateCoursesTable < ActiveRecord::Migration
  def change
  	create_table :courses do |t|
  		t.string :name
  		t.integer :professor_id
  		t.integer :subject_id
  		t.date 	 :start_date
  		t.boolean :pre_req, default: false
		end
  end
end
