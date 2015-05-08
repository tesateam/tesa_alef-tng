class CreateActivityRecommenderRecords < ActiveRecord::Migration
  def change
    create_table :activity_recommender_records do |t|
      t.integer :learning_object_id, null: false
      t.integer :relation_learning_object_id, null: false
      t.string :relation_type, null: false
      t.integer :right_answers, null: false, default: 0
      t.integer :wrong_answers, null: false, default: 0
    end

    add_foreign_key :activity_recommender_records, :learning_objects

    add_column :user_to_lo_relations, :activity_recommender_check, :boolean, default: false
  end
end
