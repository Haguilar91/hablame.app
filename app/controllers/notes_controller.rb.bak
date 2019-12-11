class NotesController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception
  before_action :authenticate_doctor!
  before_action :set_note, only: [ :edit, :update, :destroy]


   # def new
   # @note = Note.new
    #end

    def create
        @note = Note.new(note_params)
        @note.save
            #respond_to do |format|
              #    if @note.save
               #     flash[:success] = 'Successfully saved'
          
         #         else
                    
         #           format.json { render json: @note.errors, status: :unprocessable_entity }
         #         end
         #  end
       
    end
       
    
      def show

      end

    def update
        respond_to do |format|
          if @note.update(note_params)
            

          else
          format.html { render :edit }
           format.json { render json: @note.errors, status: :unprocessable_entity }
         end
       end
      end




  private
  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def note_params
    params.require(:note).permit(:id, :title, :body, :user_id)
  end



    end