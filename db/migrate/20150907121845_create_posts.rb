class CreatePosts < ActiveRecord::Migration
 
      def change
        create_table :posts do |t|
          t.string :p_nickname
          t.string :p_password
          t.string :p_content
          t.string :p_image
          t.string :p_text
          t.integer :p_textcolor
          t.integer :p_highlight

         
          t.timestamps null: false
          
        def first_method
        respond_to do |format|
        format.html # this handles normal requests asking for html
        format.js # this handles requests asking for javascript to be sent instead
        end
      end
    end
  end
end
