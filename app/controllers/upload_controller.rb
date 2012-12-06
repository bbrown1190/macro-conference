class UploadController < ApplicationController
  def index
    @upload = DataFile.paginate(page: params[:page])
    @uploads = DataFile.paginate(page: params[:page])

  end
  def new
    @file = DataFile.new
    render :file => 'app/views/upload/uploadfile.rhtml'
  end
  def show
    render :file => 'app/views/upload/show.html.erb'
  end

  def create
    name = params[:data_file][:name]
    email = params[:data_file][:email]
    institution = params[:data_file][:institution]
    paper_name = params[:data_file][:paper_name]
    uploaded_io = params[:data_file][:upload]
    # TODO think of a way to generate unique filenames, in case there is two pdfs with the same name
    file_name = uploaded_io.original_filename
    @file = DataFile.new(name: name, email: email, file_name: file_name,
                         institution: institution, paper_name: paper_name)
    if @file.save
      # Handle a successful save.
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      flash[:success] = "Successful Paper Submission"
      redirect_to root_path
    else
      render 'new'
    end


  end


  def upload
  end

end