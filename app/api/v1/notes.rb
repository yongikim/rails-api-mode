module V1
  class Notes < Grape::API
    before { authenticate! }

    resources :notes do
      desc 'get all notes'
      get '/' do
        @notes = Note.all
      end

      desc 'create new note'
      params do
        requires :title, type: String
        requires :content, type: String
      end
      post '/' do
        @note = Note.new(title: params[:title], content: params[:content])
        @note.user = current_user

        @note.save

        @note
      end
    end
  end
end
