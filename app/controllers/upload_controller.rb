class UploadController < ApplicationController
  def index
    @file = DataFile.new
    render :file => 'app/views/upload/uploadfile.rhtml'
  end

  def show
    @uploads = DataFile.paginate(page: params[:page])
    @upload = DataFile.paginate(page: params[:page])
    @data_files = DataFile.paginate(page: params[:page])
    @data_file = DataFile.paginate(page: params[:page])
    render :file => 'app/views/upload/show.html.erb'



  end

  def create
    name = params[:data_file][:name]
    email = params[:data_file][:email]
    uploaded_io = params[:data_file][:upload]
    # TODO think of a way to generate unique filenames, in case there is two pdfs with the same name
    file_name = uploaded_io.original_filename
    @file = DataFile.new(name: name, email: email, file_name: file_name)
    if @file.save
      p "========== it shoulda saved"
      # Handle a successful save.
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      redirect_to root_path
    else
      p "++++++++++++ something went wrong here"
      render 'new'
    end


  end


  def upload
  end

end